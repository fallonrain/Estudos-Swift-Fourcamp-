//
//  LoginViewModel.swift
//  TestIntermediario1
//
//  Created by user218968 on 6/4/22.
//

import UIKit
import CoreData

class LoginViewModel {
    
    func validateClient(id: String, password: String) -> Bool {
        var users: [NSManagedObject] = []
        
        guard let appDelegate = UIApplication.shared.delegate as? AppDelegate
        else { return false}
        
        let managedContext = appDelegate.persistentContainer.viewContext
        let fetchRequest = NSFetchRequest<NSManagedObject>(entityName: "Entity")
        
        do {
            users = try managedContext.fetch(fetchRequest)
            for user in users {
                let userId = user.value(forKey: "id") as? String
                let userPassword = user.value(forKey: "password") as? String
                
                if id == "" || password == "" {
                    return false
                }
                if userId != nil && userPassword != nil {
                    if userId! == id  {
                        if userPassword! == password {
                            return true
                        }
                    }
                }
            }
        } catch let error as NSError {
            print("Could not return records \(error)")
            return false
                    
        }
        return false
    }
}
