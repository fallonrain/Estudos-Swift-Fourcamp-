//
//  DetailsModel.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import Foundation

struct MovieDetails: Codable {
    var adult: Bool?
    var backdrop_path: String?
    var budget: Int?
    var genres: [Genre]?
    var homepage: String?
    var id: Int?
    var imdb_id: String?
    var original_language: String?
    var original_title: String?
    var overview: String?
    var popularity: Double?
    var poster_path: String?
    var production_companies: [ProductionCompany]?
    var production_countries: [ProductionCountry]?
    var release_date: String?
    var revenue: Int?
    var runtime: Int?
    var spoken_languages: [SpokenLanguage]?
    var status: String?
    var tagline: String?
    var title: String?
    var video: Bool?
    var vote_average: Double?
    var vote_count: Double?
}

struct Genre: Codable {
    var id: Int?
    var name: String?
}

struct ProductionCompany: Codable {
    var name: String?
    var id: Int?
    var logo_path: String?
    var origin_country: String?
}

struct ProductionCountry: Codable {
    var iso_3166_1: String?
    var name: String?
}

struct SpokenLanguage: Codable {
    var iso_639_1: String?
    var name: String?
}
struct MoviesCredits: Codable {
    var id:Int?
    var cast:[Cast]?
    var crew:[Crew]?
}
struct Cast: Codable{
    var adult:Bool?
    var gender:Int?
    var id:Int?
    var known_for_department:String?
    var name:String?
    var original_name:String?
    var popularity:Double?
    var profile_path:String?
    var cast_id:Int?
    var character:String?
    var credit_id:String?
    var order:Int?
}
struct Crew: Codable{
 
    var adult:Bool?
    var gender:Int?
    var id:Int?
    var known_department:String?
    var name:String?
    var original_name:String?
    var popularity:Double?
    var profile_path:String?
    var credit_id:String?
    var department:String?
    var job:String?
}
