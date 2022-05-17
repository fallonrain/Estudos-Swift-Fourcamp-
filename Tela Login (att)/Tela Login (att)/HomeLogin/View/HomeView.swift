//
//  ViewController.swift
//  Tela Login (att)
//
//  Created by user218968 on 5/5/22.
//

import UIKit

class HomeView: UIViewController {

        var homeController = HomeController()
    
    @IBOutlet weak var textFieldEmail: UITextField!    
    @IBOutlet weak var textFieldPassword: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonLogin(_ sender: UIButton) {
        
        if textFieldEmail.text != "" && textFieldPassword.text != "" {
            self.homeController.validateHome(email: textFieldEmail.text ?? "", password: textFieldPassword.text ?? "", sender: self.performSegue(withIdentifier: "LogadoView", sender: nil))
        } else {
           print("Login error")
        }
    }
    
    @IBAction func buttonRegister(_ sender: UIButton) {
        self.performSegue(withIdentifier: "RegisterView", sender: nil)
    }
    
}


