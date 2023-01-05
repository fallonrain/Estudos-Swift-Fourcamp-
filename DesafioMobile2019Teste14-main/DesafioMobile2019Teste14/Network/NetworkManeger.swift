//
//  NetworkManeger.swift
//  DesafioMobile2019Teste14
//
//  Created by Vinicius Angelo on 27/09/22.
//

import Foundation

class NetworkManager {
    
    private let apiKey = "9a8eb9c907c28bf818a89a58604c8b9a"
    
    func getMovies<T: Codable> (movieType: String, completionHandler: @escaping (T) -> Void) {
        
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/\(movieType)?api_key=\(apiKey)&language=pt-BR") else { return }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription)
                return
            }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completionHandler(result)
            } catch {
                print(error.localizedDescription)
                
            }
        }
        task.resume()
    }
    
    func getMovieDetails<T: Codable> (movieId: Int, completionHandler: @escaping (T) -> Void) {
        
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/\(movieId)?api_key=\(apiKey)&language=pt-BR") else { return }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription)
                return
            }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completionHandler(result)
            } catch {
                print(error.localizedDescription)
                
            }
        }
        task.resume()
    }
    func getCredits<T: Codable> (movieId: Int, completionHandler: @escaping (T) -> Void) {
        
        guard let url = URL(string: "https://api.themoviedb.org/3/movie/\(movieId)/credits?api_key=\(apiKey)&language=pt-BR") else { return }
        
        var request = URLRequest(url: url)
        
        request.httpMethod = "GET"
        
        let task = URLSession.shared.dataTask(with: request) { data, _, error in
            guard let data = data, error == nil else {
                print(error?.localizedDescription)
                return
            }
            
            do {
                let result = try JSONDecoder().decode(T.self, from: data)
                completionHandler(result)
            } catch {
                print(error.localizedDescription)
                
            }
        }
        task.resume()
    }
}
