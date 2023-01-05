//
//  RegisterViewController.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/4/22.
//

import UIKit


class RegisterViewController: UIViewController {
    
    let registerViewModel = RegisterViewModel()
    
    @IBOutlet weak var nameTextLabel: UITextField!
    @IBOutlet weak var emailTextLabel: UITextField!
    @IBOutlet weak var idTextLabel: UITextField!
    @IBOutlet weak var passwordTextLabel: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func doneButton(_ sender: UIButton) {
        
        let name = nameTextLabel.text
        let email = emailTextLabel.text
        let id = idTextLabel.text
        let password = passwordTextLabel.text
        
        
        
        
            
        
        
        if registerViewModel.registerUser(name: name, id: id, password: password, email: email) {
            

            let alert = UIAlertController(title: "Congratulations!", message: "User registered successfully\n Please Swipe Down to continue!", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true, completion: nil)
            
        } else {
            
            let alert = UIAlertController(title: "Erro", message: "Erro registering user\n Please fill the text fields.", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true, completion: nil)
            
            
            
        }
        
    
    
    }
}
