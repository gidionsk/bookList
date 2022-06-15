//
//  ViewController.swift
//  bookList
//
//  Created by Gidion S on 15/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
//        print("sini")
//        let url = URL(string: "/Users/gidion.s/Downloads/books.json")!
//        let task = URLSession.shared.dataTask(with: url) { data, response, error in
//          
//          // ensure there is no error for this HTTP response
//          guard error == nil else {
//            print ("error: \(error!)")
//            return
//          }
//          
//          // ensure there is data returned from this HTTP response
//          guard let data = data else {
//            print("No data")
//            return
//          }
//          
//          // Parse JSON into Car struct using JSONDecoder
//          guard let book = try? JSONDecoder().decode(books.self, from: data) else {
//            print("Error: Couldn't decode data into book")
//            return
//          }
//          
//          print("\(book)")
//        }
//
//        // execute the HTTP request
//        task.resume()

        
//        do{
//            let bookDecode = try decoder.decode([books].self, from:)
//            print(bookDecode)
//        }catch{
//            print(error.localizedDescription)
//        }
//        if let jsonURL = Bundle.main.url(forResource: "books", withExtension: "json"){
//            let jsonData = try Data(contentsOf: jsonURL)
//            let jsonDecoder = JSONDecoder()
//            let bookList = try jsonDecoder.decode([books].self, from: jsonData)
//        }
    }

}

//struct books: Decodable{
//    var author: String
//    var country: String
//    var imageLink: String
//    var language: String
//    var link: String
//    var pages: Int
//    var title: String
//    var year: Int
//}

