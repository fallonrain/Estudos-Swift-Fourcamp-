//
//  UpcomingViewModel.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import Foundation

protocol MovieDataProtocol {
    func getMovieData(_ movies: [Result])
    
    func getMovieDetails(_ movieDetails: MovieDetails?)
    
    func changeToDetailView(movieId: Int, indexPath: IndexPath)
    
    func getCredits(_ cast:[Cast])
}

class UpcomingViewModel {
    
    private let networkManager = NetworkManager()
    
    var delegate: MovieDataProtocol?
    
    func getUpcomingMovies() {
        networkManager.getMovies(movieType: "upcoming") { (upcomingMovies: UpcomingModel) in
            guard let movies = upcomingMovies.results else {
                print("Unable to unwrap movies")
                return
            }
            self.delegate?.getMovieData(movies)
        }
    }
    
    
    func getPopularMovies() {
        networkManager.getMovies(movieType: "popular") { (upcomingMovies: UpcomingModel) in
            guard let movies = upcomingMovies.results else {
                print("Unable to unwrap movies")
                return
            }
            self.delegate?.getMovieData(movies)
        }
    }
    
    func setupDate(_ date: String?) -> String {
        guard let date = date else {
            print("Unable to unwrap date")
            return " "
        }
        
        let day = date.split(separator: "-")[2]
        let month = date.split(separator: "-")[1]
        let year = date.split(separator: "-")[0]
        
        return "\(day)/\(month)/\(year)"
        
    }
    
    func getDetails(movieId: Int, indexPath: IndexPath) {
        networkManager.getMovieDetails(movieId: movieId) { (movieDetails: MovieDetails?) in
            
            self.delegate?.getMovieDetails(movieDetails)
            self.getCredits(movieId: movieId, indexPath: indexPath)
            
        }
    }
    func getCredits(movieId: Int, indexPath: IndexPath) {
        networkManager.getCredits(movieId: movieId) { (moviesCredits: MoviesCredits?) in
            
            guard let cast = moviesCredits?.cast else{
                print("Unable to unwrap cast")
                return }
            
            
            self.delegate?.getCredits(cast)
            self.delegate?.changeToDetailView(movieId: movieId, indexPath: indexPath)
        }
    }


}
