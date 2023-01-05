//
//  CustomCellNames.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import UIKit

class CustomCellNames: UITableViewCell {

    @IBOutlet weak var perfilImage: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
    func setup(value: Person) {
        self.perfilImage.image = UIImage(named: value.idImage)
        self.lbName.text = value.name
    }
    
}
