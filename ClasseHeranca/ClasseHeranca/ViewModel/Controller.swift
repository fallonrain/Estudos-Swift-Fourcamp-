//
//  Controller.swift
//  ClasseHeranca
//
//  Created by user218968 on 5/16/22.
//

import Foundation

protocol ControllerProtocol {
    func addUsuario()
}
protocol ControllerProtocolEndereco {
    func mostrarEndereco()
}
protocol Result: ControllerProtocol, ControllerProtocolEndereco {
    
    
}
class Controller: ViewController {
    
    
    
}

