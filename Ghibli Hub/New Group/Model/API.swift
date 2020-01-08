//
//  API.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/7/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import Foundation

struct MovieAPICLient {

static func fetchMovie(completion: @escaping (Result <Movie,AppError>)->()){
    
    let movieEndPointURLString = "https://ghibliapi.herokuapp.com/films"
    guard let url = URL(string: movieEndPointURLString) else {
        completion(.failure(.badURL(movieEndPointURLString)))
        return
    }
    let request = URLRequest(url: url) //creating a url request
    
    NetworkHelper.shared.performDataTask(with: request){
        (result) in
        switch result{
        case .failure(let appError):
            completion(.failure(.networkClientError(appError)))
        case .success(let data):
            do{
                let movies = try
                    JSONDecoder().decode(Movie.self, from: data)
                completion(.success(movies))
            }catch{
                completion(.failure(.decodingError(error)))
                
            }
            
        }
    }
}
}
