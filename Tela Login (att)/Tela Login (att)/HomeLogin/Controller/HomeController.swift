//
//  HomeController.swift
//  Tela Login (att)
//
//  Created by user218968 on 5/5/22.
//

import Foundation

class HomeController {
    
    private var listUser: [User] = []
    
    func validateHome (email: String, password: String, sender: Void){
        
        let email = email
        let password = password
        let sender = sender
        for user in listUser {
            if user.email == email && user.password == password {
                sender
            } else {
                print("User not Finded")
            }
        }
    }
    
    
}
