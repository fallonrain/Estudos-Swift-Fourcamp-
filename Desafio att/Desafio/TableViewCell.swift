//
//  TableViewCell.swift
//  Desafio
//
//  Created by Josicleison Elves on 29/04/22.
//

import UIKit

class TableViewCell: UITableViewCell
{
    @IBOutlet weak var storeVar1: UILabel!
    @IBOutlet weak var storeVar2: UILabel!
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
        
        storeVar1.text = "test@test.com"
        storeVar2.text = "+99 9999-9999 "
    }

    
    
}
