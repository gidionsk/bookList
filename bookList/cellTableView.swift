//
//  cellTableView.swift
//  bookList
//
//  Created by Gidion S on 15/06/22.
//

import Foundation
import UIKit

class cellTableView: UITableViewCell {
   
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var authorLabel: UILabel!
    @IBOutlet weak var yearLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
  
  
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
  
        // Configure the view for the selected state
    }
  
  
}
