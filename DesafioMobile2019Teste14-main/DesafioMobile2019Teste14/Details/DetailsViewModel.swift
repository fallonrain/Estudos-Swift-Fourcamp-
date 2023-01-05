//
//  DetailsViewModel.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import Foundation
class DetailsViewModel {
    
    var movieId:String?
    
    func getGenresString(genresArray: [Genre]?) -> String {
        var genreString = ""
        
        guard let genres = genresArray else {
            print("Unable to unwrap genres")
            return " "
        }
        
        for i in 0..<genres.count {
            
            if i < genres.count - 1 {
                genreString += "\(genres[i].name ?? " "), "
            } else {
                genreString += "\(genres[i].name ?? " ")"
            }
        }
        
        return genreString
    }
    
    func getYearString(dateString: String?) -> String {
        
        guard let movieDate = dateString else {
            print("Unable unwrap movieDate")
            return " "
        }
        let year = String(movieDate.split(separator: "-")[0])
        
        return year
    }
}
