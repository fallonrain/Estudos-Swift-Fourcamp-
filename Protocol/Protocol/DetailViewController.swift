//
//  DetailViewController.swift
//  Protocol
//
//  Created by Josicleison Elves on 11/05/22.
//
import UIKit

class DetailViewController: UIViewController
{
    @IBOutlet weak var detailImageView: UIImageView!
    
    @IBOutlet weak var detailNameLabel: UILabel!
    @IBOutlet weak var detailSobreNomeLabel: UILabel!
    @IBOutlet weak var detailGeneroLabel: UILabel!
    @IBOutlet weak var detailIdadeLabel: UILabel!
    
    var pessoaSelecionada: Pessoa?
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        self.detailImageView.image = UIImage(named: self.pessoaSelecionada?.avatar ?? "")
        
        self.detailNameLabel.text = self.pessoaSelecionada?.nome
        self.detailSobreNomeLabel.text = self.pessoaSelecionada?.sobreNome
        self.detailGeneroLabel.text = self.pessoaSelecionada?.genero?.rawValue
        self.detailIdadeLabel.text = String(self.pessoaSelecionada?.idade ?? 0)
    }
}
