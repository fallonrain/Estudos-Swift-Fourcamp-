//
//  ViewController.swift
//  Desafio
//
//  Created by Josicleison Elves on 4/28/22.
//

import UIKit

class ViewController: UIViewController
{
    var user: [String : String] = ["Thiago":"1234"]
    
    
    @IBOutlet weak var loginFail: UILabel!
    
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInButton(_ sender: UIButton)
    {
        self.performSegue(withIdentifier: "RegisterScreen", sender: nil)
    }
    
    @IBAction func loginButton(_ sender: UIButton)
    {
                for (name,password) in user
                {
                    if usernameTextField.text == name && name != "" && passwordTextField.text == password && password != ""
                    {
                        self.performSegue(withIdentifier: "PersonalData", sender: nil)
                    }
                    else
                    {
                        loginFail.isHidden = false
                    }
                }
            }
        }
