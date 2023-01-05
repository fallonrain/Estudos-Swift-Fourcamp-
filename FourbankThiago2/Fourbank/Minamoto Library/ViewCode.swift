//
//  ViewCode.swift
//  CollectionDiffableDataSouce
//
//  Created by Evandro Rodrigo Minamoto 
//

import Foundation

protocol ViewCode {
    
    func buildViewHierarchy()
    func addConstraints()
    func additionalConfiguration()
    func setup()
}

extension ViewCode {
    
    func setup() {
        
        buildViewHierarchy()
        addConstraints()
        additionalConfiguration()
    }
    
    func additionalConfiguration() {}
}

