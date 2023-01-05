//
//  RegisterView.swift
//  TelaLoginViewCode
//
//  Created by user218968 on 7/1/22.
//

import Foundation

extension RegisterElementsModel{
    
    func addSubview(){
        
        self.view.addSubview(registerEmailTextField)
        self.view.addSubview(registerPasswordTextField)
        self.view.addSubview(confirmTextField)
        self.view.addSubview(confirmButton)
        
    }
    func contraintsForConfirmButton(){
        
        confirmButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 30).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        confirmButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
        
        confirmButton.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 80).isActive = true
        confirmButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        confirmButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -70).isActive = true
        confirmButton.heightAnchor.constraint(equalToConstant: 30).isActive = true
    }
    func constraintsForTextFields(){
        
        registerEmailTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -110).isActive = true
        registerEmailTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        registerEmailTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        registerEmailTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        registerPasswordTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -70).isActive = true
        registerPasswordTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        registerPasswordTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        registerPasswordTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
        confirmTextField.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -30).isActive = true
        confirmTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        confirmTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        confirmTextField.heightAnchor.constraint(equalToConstant: 25).isActive = true
        
    }
}
