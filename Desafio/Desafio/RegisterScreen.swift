//
//  RegisterScreen.swift
//  Desafio
//
//  Created by user218968 on 4/28/22.
//

import UIKit

class RegisterScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func emailTextField(_ sender: UITextField) {
    }
    
    
    @IBAction func buttonBack(_ sender: UIButton) {
    }
    self.performSegue(withIdentifier: "backScreen", sender: nil)
}

