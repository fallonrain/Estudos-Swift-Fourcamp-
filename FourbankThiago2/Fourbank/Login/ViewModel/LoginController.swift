//
//  LoginController.swift
//  Fourbank
//
//  Created by Josicleison Elves on 06/06/22.
//

import UIKit
import CoreData
 
class LoginController {
    func validateLogin(_ cpf: String,_ password: String) -> Bool {
        
        if cpf != "" && password != "" {
            
            var users: [NSManagedObject] = []
            
            guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return false}
            
            let managedContext = appDelegate.persistentContainer.viewContext
            let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "User")
            
            do {
                
                users = try managedContext.fetch(fetchRequest)
                for user in users {
                    
                    let storedCpf = user.value(forKey: "cpf") as? String
                    let storedPassword = user.value(forKey: "password") as? String
                    
                    if storedCpf != nil && storedPassword != nil {
                        
                        if cpf == storedCpf! && storedPassword! == password {
                            
                            return true
                        }
                    }
                }
            }
            catch let error as NSError {
                
                print("Erro ao acessar dados. \(error)")
                return false
            }
        }
        return false
    }
}
