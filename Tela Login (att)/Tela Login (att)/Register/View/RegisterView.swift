//
//  RegisterView.swift
//  Tela Login (att)
//
//  Created by user218968 on 5/5/22.
//

import UIKit

class RegisterView: UIViewController{
    
    var registerController = RegisterController()
    
    @IBOutlet weak var textFieldName: UITextField!
    @IBOutlet weak var textFieldLastName: UITextField!
    @IBOutlet weak var textFieldOffice: UITextField!
    @IBOutlet weak var textFieldEmail: UITextField!
    @IBOutlet weak var textFieldPassword: UITextField!
    @IBOutlet weak var textFieldConfirmPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func buttonDone(_ sender: UIButton) {
        
        if textFieldEmail.text != nil && textFieldPassword.text == textFieldConfirmPassword.text {
            self.registerController.userAdd(name: textFieldName.text ?? "", lastName: textFieldLastName.text ?? "", office: textFieldOffice.text ?? "", email: textFieldEmail.text ?? "", password: textFieldPassword.text ?? "")
            self.performSegue(withIdentifier: "HomeView", sender: nil)
        }else {
            print("Error")
        }
    }
    
}
