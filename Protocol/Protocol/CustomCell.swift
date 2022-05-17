//
//  CustomCell.swift
//  Protocol
//
//  Created by Josicleison Elves on 11/05/22.
//

import UIKit

protocol CustomCellProtocol: AnyObject
{
    func tappedEditButton(value: Pessoa)
}

class CustomCell: UITableViewCell
{
    @IBOutlet weak var perfilImage: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var subTitleLabel: UILabel!
    
    private var pessoa: Pessoa?
    
    weak var delegate: CustomCellProtocol?
    
    override func awakeFromNib()
    {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool)
    {
        super.setSelected(selected, animated: animated)
    }
    
    func setup(_ value: Pessoa)
    {
        self.pessoa = value
        self.nameLabel.text = value.nome
        self.subTitleLabel.text = value.sobreNome
        
        self.perfilImage.image = UIImage(named: value.avatar ?? "")
    }
    
    @IBAction func tappedEditButton(_ sender: UIButton)
    {
        if let _pessoa = self.pessoa
        {
            print("TappedEditButton###")
            
            self.delegate?.tappedEditButton(value: _pessoa)
        }
    }
}
