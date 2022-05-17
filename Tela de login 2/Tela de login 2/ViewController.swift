//
//  ViewController.swift
//  Tela de login 2
//
//  Created by user218968 on 4/25/22.
//

import UIKit

class ViewController: UIViewController {
 
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //acao do botao ira mostrar no console as informacoes inseridas nos text fields Password e E-mail
    @IBAction func buttonLogin(_ sender: UIButton) {
        print(emailTextField.text)
        print(passwordTextField.text)
    }
    
    
    
    
    

}

