//
//  RegisterScreen.swift
//  Desafio
//
//  Created by user218968 on 4/28/22.
//

import UIKit

class RegisterScreen: UIViewController
{
    var user = ["Thiago":"1234"]
    
    @IBOutlet weak var signInUsername: UITextField!
    @IBOutlet weak var signInPassword: UITextField!
    @IBOutlet weak var signInConfirmPassword: UITextField!

    @IBOutlet weak var signInFail: UILabel!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    @IBAction func signInDone(_ sender: UIButton)
    {
        if signInPassword.text == signInConfirmPassword.text
        {
            user[signInUsername.text ?? ""]=signInPassword.text ?? ""
            self.performSegue(withIdentifier: "RegisterScreenReturn", sender: nil)
            
            print(user)
        }
        else
        {
            signInFail.isHidden = false
        }
    }
}
