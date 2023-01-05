//
//  DataRecord.swift
//  RoletaRussa_
//
//  Created by user218968 on 07/07/22.
//

import Foundation

struct DataRecord: Codable {
    let totalValue: Double
    let productList: [Product]
}

struct Product: Codable {
    let productID: String
    let productType: String
    let date: String
    let name: String
    let price: Double
    let quantity: Int
}
