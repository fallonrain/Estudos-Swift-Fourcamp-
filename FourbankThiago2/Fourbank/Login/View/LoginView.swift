//
//  LoginView.swift
//  Fourbank
//
//  Created by Josicleison Elves on 01/06/22.
//

import UIKit

class LoginView: UIViewController
{
    @IBOutlet weak var cpfTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func loginButton(_ sender: UIButton)
    {
        let loginController = LoginController()
        if loginController.validateLogin(cpfTextField.text ?? "", passwordTextField.text ?? "")
        {
            self.performSegue(withIdentifier: "HomeView", sender: nil)
        }
    }
}
