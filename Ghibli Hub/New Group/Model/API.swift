//
//  API.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/7/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import Foundation

struct MovieAPICLient {

static func fetchElement(completion: @escaping (Result <[Movie],AppError>)->()){
    
    let elementEndPointURLString = "https://5c1d79abbc26950013fbcaa9.mockapi.io/api/v1/elements"
    guard let url = URL(string: elementEndPointURLString) else {
        completion(.failure(.badURL(elementEndPointURLString)))
        return
    }
    let request = URLRequest(url: url) //creating a url request
    
    NetworkHelper.shared.performDataTask(with: request){
        (result) in
        switch result{
        case .failure(let appError):
            completion(.failure(.networkClientError(appError)))
        case .success(let data):
            do{//decoding raw data from the shared url session, according to our model=Results.self
                let elements = try
                    JSONDecoder().decode([Movie].self, from: data)
                completion(.success(elements))
            }catch{
                completion(.failure(.decodingError(error)))
                
            }
            
        }
    }
}
}
