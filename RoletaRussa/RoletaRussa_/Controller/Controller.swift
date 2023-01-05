//
//  Controller.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import UIKit
import SCLAlertView

class Controller {
    
    private var myArray: [Person] = []
    private var myImageArray = ["Image-1", "Image-2", "Image-3", "Image-4", "Image-5"]
    
    private var luckyPerson: Person?
    
    var customCellNames: CustomCellNames = CustomCellNames()
    
    var count: Int {
        if myArray.isEmpty {
            return 1
        } else {
            return myArray.count
        }
    }
    
    func addPerson(value: String) {
        
        let _person: Person = Person(id: ((self.myArray.last?.id ?? 0) + 1), name: value, idImage: myImageArray.randomElement() ?? "")
        
        self.myArray.append(_person)
    }
    
    func arrayIsEmpty() -> Bool {
        
        if myArray.isEmpty {
            return true
        } else {
            return false
        }
    }
    
    func loadCurrentPerson(indexPath: IndexPath) -> Person {
        
        return self.myArray[indexPath.row]
        
    }
    
    func drawPerson() {
        
        luckyPerson = self.myArray.randomElement()
        
    }
    
    func validateDrawnPerson(indexPath: IndexPath) -> Bool {
        
        if luckyPerson == nil {
            return false
        } else {
            if self.myArray[indexPath.row].id == luckyPerson?.id {
                let appearance = SCLAlertView.SCLAppearance(showCircularIcon: true)
                let alertView = SCLAlertView(appearance: appearance)
                let alertViewIcon = UIImage(named: luckyPerson?.idImage ?? "")
                alertView.showInfo("Parabéns! \(luckyPerson?.name ?? "")", subTitle: "Você foi o premiado da rodada para pagar a conta!", circleIconImage: alertViewIcon)
            } else {
                self.myArray.remove(at: indexPath.row)
            }
            return true
        }
        
    }
    
}

extension ViewController: ViewControllerDelegate {
    
    func enableButtonDraw(counter: Int) {
        if counter > 1 {
            btRotate.isEnabled = true 
        }
    }
    
    func createAlert() {
        SCLAlertView().showInfo("Informação", subTitle: "Botão Sortear não foi pressionado!")
    }
    
}
