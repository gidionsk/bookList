//
//  tableController.swift
//  bookList
//
//  Created by Gidion S on 15/06/22.
//

import Foundation
import UIKit

class tableController: UITableViewController {
    
    var listbook:[books] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let localData = readLocalFile(forName: "books"){
            listbook = parse(jsonData: localData)!
        }
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return listbook.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as! cellTableView
//        cell.textLabel?.text = "Section \(indexPath.section) Row \(indexPath.row)"
        cell.titleLabel.text = listbook[indexPath.row].title
        cell.authorLabel.text = "By " + listbook[indexPath.row].author
        cell.yearLabel.text = String(listbook[indexPath.row].year)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 130
    }
}

private func readLocalFile(forName name: String) -> Data? {
    do {
        if let bundlePath = Bundle.main.path(forResource: name,
                                             ofType: "json"),
            let jsonData = try String(contentsOfFile: bundlePath).data(using: .utf8) {
            return jsonData
        }
    } catch {
        print(error)
    }
    
    return nil
}

private func parse(jsonData: Data) -> [books]? {
    do {
        let decodedData = try JSONDecoder().decode([books].self,
                                                   from: jsonData)
        return decodedData
    } catch {
        print(error.localizedDescription)
    }
    return nil
}

struct books: Codable{
    var author: String
    var country: String
    var imageLink: String
    var language: String
    var link: String
    var pages: Int
    var title: String
    var year: Int
}


