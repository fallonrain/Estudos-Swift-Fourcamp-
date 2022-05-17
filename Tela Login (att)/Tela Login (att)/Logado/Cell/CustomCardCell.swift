//
//  CustomCardCell.swift
//  Tela Login (att)
//
//  Created by user218968 on 5/5/22.
//

import UIKit

class CustomCardCell: UITableViewCell {

    var registerController = RegisterController()
    
    
    @IBOutlet weak var imageUser: UIImageView!
    @IBOutlet weak var labelFullName: UILabel!
    @IBOutlet weak var labelOffice: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        let usuario = registerController.listUser
        
        labelFullName.text = "\(usuario[0].name ?? "") \(usuario[0].lastName ?? "")"
        labelEmail.text = usuario[0].email
        labelOffice.text = usuario[0].email 
        
    }
    
    
}
