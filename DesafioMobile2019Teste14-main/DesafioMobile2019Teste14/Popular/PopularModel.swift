//
//  PopularModel.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import Foundation

struct PopularModel:Codable {
    var page:Int?
    var results: [Results]?
    var totalResults: Int?
    var totalPages:Int?
}
struct Results:Codable{
        
    var posterPath:String?
    var adult: Bool?
    var overview: String?
    var releaseDate:String?
    var genreIds: [Int]?
    var id: Int?
    var originalTitle: String?
    var originalLanguage: String?
    var title: String?
    var backdropPath: String?
    var popularity: Double?
    var voteCount: Int?
    var video: Bool?
    var voteAverage:Double?
     
    }

