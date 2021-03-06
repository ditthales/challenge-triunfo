//
//  Movie+API.swift
//  FilmADA
//
//  Created by Francisco Soares Neto on 13/07/22.
//

import Foundation

extension Movie {

    static let urlComponents = URLComponents(string: "https://api.themoviedb.org/")!
    static func popularMoviesAPI() async -> [Movie] {
        
        var components = Movie.urlComponents
        components.path = "/3/discover/movie"
        components.queryItems = [
            URLQueryItem(name: "api_key", value: Movie.apiKey),
            URLQueryItem(name: "language", value: "pt-BR"),
            URLQueryItem(name: "sort_by", value: "popularity.desc"),
            URLQueryItem(name: "with_keywords", value: "1647")
        ]
        
        let session = URLSession.shared
        do{
            let (data, response) = try await session.data(from: components.url!)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let movieResult = try decoder.decode(MoviesResponse.self, from: data)
            return movieResult.results
        }catch{
            print(error)
        }
        
        return []
    }
    
    static func nowPlayingMoviesAPI() async -> [Movie] {
        
        var components = Movie.urlComponents
        components.path = "/3/discover/movie"
        components.queryItems = [
            URLQueryItem(name: "api_key", value: Movie.apiKey),
            URLQueryItem(name: "language", value: "pt-BR"),
            URLQueryItem(name: "sort_by", value: "vote_average.desc"),
            URLQueryItem(name: "with_keywords", value: "1647"),
            URLQueryItem(name: "vote_count.gte", value: "100")
        ]
        
        let session = URLSession.shared
        do{
            let (data, response) = try await session.data(from: components.url!)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let movieResult = try decoder.decode(MoviesResponse.self, from: data)
            return movieResult.results
        }catch{
            print(error)
        }
        
        return []
    }
    
    static func upcomingAPI() async -> [Movie] {
        
        var components = Movie.urlComponents
        components.path = "/3/discover/movie"
        components.queryItems = [
            URLQueryItem(name: "api_key", value: Movie.apiKey),
            URLQueryItem(name: "language", value: "pt-BR"),
            URLQueryItem(name: "sort_by", value: "release_date.desc"),
            URLQueryItem(name: "with_keywords", value: "1647"),
            URLQueryItem(name: "vote_count.gte", value: "10")
        ]
        
        let session = URLSession.shared
        do{
            let (data, response) = try await session.data(from: components.url!)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let movieResult = try decoder.decode(MoviesResponse.self, from: data)
            return movieResult.results
        }catch{
            print(error)
        }
        
        return []
    }
    
    static func searchAPI(searchString: String) async -> [Movie] {
        
        var components = Movie.urlComponents
        components.path = "/3/search/movie"
        components.queryItems = [
            URLQueryItem(name: "api_key", value: Movie.apiKey),
            URLQueryItem(name: "language", value: "pt-BR"),
            URLQueryItem(name: "query", value: searchString),
        ]
        
        let session = URLSession.shared
        do{
            let (data, response) = try await session.data(from: components.url!)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let movieResult = try decoder.decode(MoviesResponse.self, from: data)
            return movieResult.results
        }catch{
            print(error)
        }
        
        return []
    }
    
    static func trendingAPI(isToday: Bool) async -> [Movie] {
        var timeWindow: String
        if isToday == true{
            timeWindow = "day"
        }else{
            timeWindow = "week"
        }
        let urlString = "https://api.themoviedb.org/3/trending/all/\(timeWindow)?api_key=\(Movie.apiKey)"
        print("url: \(urlString)")
        let url: URL = URL(string: urlString)!
        
        let session = URLSession.shared
        do{
            let (data, response) = try await session.data(from: url)
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .convertFromSnakeCase
            let movieResult = try decoder.decode(MoviesResponse.self, from: data)
            return movieResult.results
        }catch{
            print(error)
        }
        
        return []
    }
    
    static func downloadImageData(withPath: String) async -> Data{
        let urlString = "https://image.tmdb.org/t/p/w780\(withPath)"
        let url: URL = URL(string: urlString)!
        let session = URLSession.shared
        
        do{
            let (data, response) = try await session.data(from: url)
            return data
        }catch{
            print(error)
        }
        return Data()
    }
    
    // MARK: - Recuperando a chave da API de um arquivo
    static var apiKey: String {
        guard let url = Bundle.main.url(forResource: "TMDB-Info", withExtension: "plist") else {
            fatalError("Couldn't find api key configuration file.")
        }
        guard let plist = try? NSDictionary(contentsOf: url, error: ()) else {
            fatalError("Couldn't interpret api key configuration file as plist.")
        }
        guard let key = plist["API_KEY"] as? String else {
            fatalError("Couldn't find an api key in its configuration file.")
        }
        return key
    }
}

