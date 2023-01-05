//
//  RegisterController.swift
//  Fourbank
//
//  Created by Josicleison Elves on 05/06/22.
//

import UIKit
import CoreData

class RegisterController {
    
    func register(_ fullName: String?,
                  _ cpf: String?,
                  _ phone: String?,
                  _ email: String?,
                  _ password: String?) {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate else {return}
    
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "User", in: managedContext)!
        
        let user = NSManagedObject(entity: entity, insertInto: managedContext)
        
        user.setValue(cpf ?? "", forKey: "cpf")
        user.setValue(fullName ?? "", forKey: "fullName")
        user.setValue(password ?? "", forKey: "password")
        user.setValue(email ?? "", forKey: "email")
        user.setValue(phone ?? "", forKey: "phone")
        
        do {
            
            try managedContext.save()
        }
        catch let error as NSError {
            
            print("Erro ao registrar dados. \(error)")
        }
    }
    
    func validateRegister(_ data: String) -> Bool {
        
        if data != "" {
            
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
                        
                        if data == storedCpf! {
                            
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
