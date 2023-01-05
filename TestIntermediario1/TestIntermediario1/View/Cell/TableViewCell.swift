//
//  TableViewCell.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/5/22.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var adviceLabel: UILabel!
    
   
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
