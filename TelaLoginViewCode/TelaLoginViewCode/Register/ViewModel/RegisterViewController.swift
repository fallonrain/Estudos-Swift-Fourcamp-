//
//  RegisterViewController.swift
//  TelaLoginViewCode
//
//  Created by user218968 on 7/1/22.
//

import Foundation
import UIKit
import CoreData

class RegisterviewController: RegisterElementsModel {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .darkGray
        
        addSubview()
        contraintsForConfirmButton()
        constraintsForTextFields()
       
        
        confirmButton.addTarget(self, action: #selector(confirmButtonAction), for: .touchUpInside)
        
        

    }
    
    @objc func confirmButtonAction(sender: UIButton) {
           
        
        
        
        let email = registerEmailTextField.text ?? ""
        let password = registerPasswordTextField.text ?? ""
        
        if registerEmailTextField.text != "" && registerPasswordTextField.text != "" && confirmTextField.text != ""{
            if registerPasswordTextField.text == confirmTextField.text {
                registerUser(email: email, password: password)
                
//                let registerView = RegisterviewController()
//                registerView.modalPresentationStyle = .fullScreen
//                present(registerView, animated: true)
                
            }
            
        
        func registerUser(email: String, password: String){
            
            let email = registerEmailTextField.text ?? ""
            let password = registerPasswordTextField.text ?? ""
            
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else{
                return }
            let managedContext = appDelegate.persistentContainer.viewContext
            let entity = NSEntityDescription.entity(forEntityName: "User", in: managedContext)!
            let newUser = NSManagedObject(entity: entity, insertInto: managedContext)
            newUser.setValue(email, forKey: "email")
            newUser.setValue(password, forKey: "password")
            
            do {
                    try managedContext.save()
                    print("User Registered!")
                } catch let error as NSError {
                    print("Error trying to register \(error)")
            }

        }
    }
}
}





