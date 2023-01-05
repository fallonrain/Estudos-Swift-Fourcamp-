	//
//  ViewController.swift
//  TelaLoginViewCode
//
//  Created by user218968 on 6/30/22.
//

import UIKit


class ViewController: LoginElementsModel {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        addSubview()
        constraintsForTextFields()
        constraintsForLabels()
        contraintsForButtons()
        
        registerButton.addTarget(self, action: #selector(registerButtonAction), for: .touchUpInside)
        loginButton.addTarget(self, action: #selector(loginButtonAction), for: .touchUpInside)

    }
    
    @objc func registerButtonAction(sender: UIButton!){
           
        let registerView = RegisterviewController()
        registerView.modalPresentationStyle = .fullScreen
        present(registerView, animated: true)
            

    }
    
    @objc func loginButtonAction(sender: UIButton!){
           
        
        
    

    }
    
}
