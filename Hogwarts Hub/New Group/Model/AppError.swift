//
//  AppError.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/7/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import Foundation

enum AppError: Error {
    
  case badURL(String)
  case noResponse
  case networkClientError(Error)
  case noData
  case decodingError(Error)
  case encodingError(Error)
  case badStatusCode(Int)
  case badMimeType(String)
    
}
