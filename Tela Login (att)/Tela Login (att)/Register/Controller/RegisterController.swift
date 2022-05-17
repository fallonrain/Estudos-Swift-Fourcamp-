//
//  RegisterController.swift
//  Tela Login (att)
//
//  Created by user218968 on 5/5/22.
//

import Foundation

class RegisterController {
    
    var listUser: [User] = []
    
    func userAdd(name: String,
                 lastName: String,
                 office: String,
                 email: String,
                 password: String){
        
        let name = name
        let lastName = lastName
        let office = office
        let email = email
        let password = password
        
        if name != nil && lastName != nil && office != nil && email != nil && password != nil {
            listUser.append(User.init(name: name, lastName: lastName, office: office,
                                      email: email ?? "", password: password ?? ""))
        } else {
            print("Register Fail")
        }
            
    }
    
    
}
