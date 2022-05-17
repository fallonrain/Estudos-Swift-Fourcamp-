//
//  ViewController.swift
//  ClasseHeranca
//
//  Created by user218968 on 5/16/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var labelUsuario: UILabel!
    @IBOutlet weak var labelIdade: UILabel!
    @IBOutlet weak var labelProfissao: NSLayoutConstraint!
    @IBOutlet weak var labelEndereco: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}
extension ViewController: ControllerProtocol{
    func addUsuario() {
        
    }
    
}

extension ViewController: Result{
    func mostrarEndereco() {
        <#code#>
    }
    
    
}
