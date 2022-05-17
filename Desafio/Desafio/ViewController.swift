//
//  ViewController.swift
//  Desafio
//
//  Created by user218968 on 4/28/22.
//

import UIKit

class ViewController: UIViewController {
    
    var userName = "thiago"
    var userPassword = "test"

    @IBOutlet weak var usernameTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    
    @IBAction func registerButton(_ sender: UIButton) {
        
            
        self.performSegue(withIdentifier: "RegisterScreen", sender: nil)
        
        }
    
    
    @IBAction func loginButton(_ sender: UIButton) {
        
        if(usernameTextField.text == userName && passwordTextField.text == userPassword) {
            self.performSegue(withIdentifier: "PersonalData", sender: nil)
   }
    
    
    
    }

}
