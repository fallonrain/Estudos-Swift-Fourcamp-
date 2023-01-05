//
//  HistoricoController.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import Foundation
import UIKit

class HistoricController: UIViewController {
    
    private var JSONData: DataRecord?
    
    let historicController: Controller = Controller()
    
    var count: Int {
        return JSONData?.productList.count ?? 0
    }
    
    var value: Double {
        return JSONData?.totalValue ?? 0.0
    }
    
    func importData() {
        
        let jsonData = readLocalJSONFile(forName: "JSONData")
        
        if let data = jsonData {
            if let recordObj = parse(jsonData: data) {
                JSONData = recordObj
            }
        }
    }
    
    func loadCurrentProduct(indexPath: IndexPath) -> Product? {
        return self.JSONData?.productList[indexPath.row]
    }
    
    func getType(indexPath: IndexPath) -> String {
        if self.JSONData?.productList[indexPath.row].productType == "BEBIDA" {
            return "beer"
        } else {
            return "dish"
        }
    }
}
