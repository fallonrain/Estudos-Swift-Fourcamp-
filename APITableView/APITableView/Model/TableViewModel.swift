//
//  TableViewModel.swift
//  APITableView
//
//  Created by user218968 on 6/2/22.
//

import Foundation

struct CharacterAPIResult: Codable {
    var status: String
    var data: CharacterAPIData
}

struct CharacterAPIData: Codable {
    var count: Int
    var results: [Character]
}

struct Character: Codable {
    var id: Int
    var name: String
    var description: String
    var thumbnail: [String:String]
}
