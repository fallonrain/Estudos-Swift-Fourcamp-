//
//  ViewController.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/4/22.
//

import UIKit

class ViewController: UIViewController {
    
    let loginViewModel = LoginViewModel()

    
    @IBOutlet weak var idTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func loginButton(_ sender: UIButton) {
        let id = idTextField.text ?? ""
        let password = passwordTextField.text ?? ""
        if loginViewModel.validateClient(id: id, password: password) {
            self.performSegue(withIdentifier: "TableViewSegue", sender: nil)
        }else {
            let alert = UIAlertController(title: "Erro", message: "Please enter your ID and Password", preferredStyle: .alert)
            
            alert.addAction(UIAlertAction(title: "Ok", style: .default))
            self.present(alert, animated: true, completion: nil)
        }
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        self.performSegue(withIdentifier: "RegisterViewController", sender: nil)
    }
    
}

