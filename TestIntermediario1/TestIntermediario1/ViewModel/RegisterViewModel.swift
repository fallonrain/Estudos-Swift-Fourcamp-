//
//  RegisterViewModel.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/4/22.
//

import UIKit
import CoreData

class RegisterViewModel {
    
    func registerUser(name: String?, id: String?, password: String?, email: String?) -> Bool {
        let newClient = User(name: name, id: id, password: password, email: email)
        
        if newClient.id == "" || newClient.name == "" || newClient.password == "" || newClient.email == "" {
            return false
        }
        if save(id: newClient.id, name: newClient.name, email: newClient.email, password: newClient.password) {
            return true
        }
        return false
    }
    func save(id: String?, name: String?, email: String?, password: String?) -> Bool {
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate
        else {return false }
        
        let managedContext = appDelegate.persistentContainer.viewContext
        
        let entity = NSEntityDescription.entity(forEntityName: "Entity", in: managedContext)!
          
        let user =  NSManagedObject(entity: entity, insertInto: managedContext)
        user.setValue(id ?? "", forKey: "id")
        user.setValue(name ?? "", forKey: "name")
        user.setValue(email ?? "", forKey: "email")
        user.setValue(password ?? "", forKey: "password")
        
        do {
            try managedContext.save()
            return true
        } catch let error as Error {
            print("Error\n Please Try Again!\(error)")
            return false
        }
    }
    
}
