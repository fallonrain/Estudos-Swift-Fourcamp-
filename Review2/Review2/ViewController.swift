//
//  ViewController.swift
//  Review2
//
//  Created by user218968 on 5/4/22.
//

import UIKit


struct User {
var name: String?
var lastName: String?
var email: String?
}

class ViewController: UIViewController {
 
    
    var nome = "Thiago"
    var sobrenome = "Fernandes"
     
    var user: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.usuario()
    }
    
    func usuario(){
        
        var usuario = User.init(name: "", lastName: "", email: "")
    
            usuario.name = "Thiago"
            usuario.lastName = "Fernandes"
            usuario.email = "thiago.fernandes@foursys.com.br"
    
        
        if let unwrapName = usuario.name{
            
            if let unwrapLastName = usuario.lastName{
                
                if let unwrapEmail = usuario.email{
                    
                    print(unwrapName, unwrapLastName, unwrapEmail)
                }
            }
            
        }
        

    }
}


