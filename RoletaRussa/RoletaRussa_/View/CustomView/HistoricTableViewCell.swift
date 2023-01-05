//
//  HistoricTableViewCell.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import UIKit

class HistoricTableViewCell: UITableViewCell {

    @IBOutlet weak var imageItem: UIImageView!
    @IBOutlet weak var lbItem: UILabel!
    @IBOutlet weak var lbValueItem: UILabel!
    @IBOutlet weak var lbQuantityItem: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(value: Product?, typeImage: String) {
        
        if value != nil {
            self.lbQuantityItem.text = "\(value!.quantity)"
            self.lbItem.text = value!.name
            self.lbValueItem.text = String(format: "%.2f", value!.price)
            self.imageItem.image = UIImage(named: typeImage)
        }
    }
    
}
