//
//  LoginView.swift
//  TelaLoginViewCode
//
//  Created by user218968 on 6/30/22.
//

import Foundation

extension LoginElementsModel{
    
    func addSubview(){
        
        self.view.addSubview(emailLabel)
        self.view.addSubview(passwordLabel)
        self.view.addSubview(loginButton)
        self.view.addSubview(registerButton)
        self.view.addSubview(emailTextField)
        self.view.addSubview(passwordTextField)
        
       
    }
    
    func contraintsForButtons(){
        
        loginButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        loginButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        loginButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        loginButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        registerButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 80).isActive = true
        registerButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        registerButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        registerButton.heightAnchor.constraint(equalToConstant: 30).isActive = true

    }
    
    func constraintsForLabels(){
      
        emailLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -140).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        passwordLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -80).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
    }
    
    func constraintsForTextFields(){
        
        emailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        emailTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        passwordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -50).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        passwordTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
    }
    
}
