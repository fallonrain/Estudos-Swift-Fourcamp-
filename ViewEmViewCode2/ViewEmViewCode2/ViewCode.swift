//
//  ViewCode.swift
//  ViewEmViewCode2
//
//  Created by user218968 on 5/25/22.
//

import Foundation

protocol ViewCode {
    func buildViewHierarchy()
    func addConstrains()
    func additionalConfiguration()
    func setup()
    
}

extension ViewCode {
    func setup () {
        buildViewHierarchy()
        addConstrains()
        additionalConfiguration()
    }
}
