//
//  ViewCode.swift
//  JokenpoViewCode
//
//  Created by user218968 on 6/28/22.
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
    func additionalConfiguration() {
        
    }
}

