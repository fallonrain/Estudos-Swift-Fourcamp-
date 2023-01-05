//
//  UpcomingModel.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import Foundation

struct UpcomingModel: Codable {
    
    var page: Int?
    var results: [Result]?
    var dates: Dates?
    var total_pages: Int?
    var total_results: Int?
}


struct Result: Codable {
    
    var poster_path: String?
    var adult: Bool?
    var overview: String?
    var release_date: String?
    var genre_ids: [Int]?
    var id: Int?
    var original_title: String?
    var original_language: String?
    var title: String?
    var backdrop_path: String?
    var popularity: Double?
    var vote_count: Int?
    var video: Bool?
    var vote_average: Double?
}

struct Dates: Codable {
    
    var maximum: String?
    var minimum: String?
}

