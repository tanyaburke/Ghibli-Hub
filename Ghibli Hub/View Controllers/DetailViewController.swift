//
//  DetailViewController.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/7/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    
      @IBOutlet weak var movieImage: UIImageView!
      @IBOutlet weak var detailLabel: UILabel!
       
      var movie: Movie?
      
      override func viewDidLoad() {
          super.viewDidLoad()

         loadDetails()
          
      }

      
      func loadDetails(){
          guard let movie = movie else{
              fatalError("unable to access passed information")
          }
        navigationItem.title = "\(String(describing: movie.title))"
        detailLabel.text = "Release Date: \(movie.releaseDate)\nDirector: \(movie.director)\nDescription: \(movie.description)"
          
        
          
//        let fullImageUrl = "\(movie)"
//
//          elementImage.getImage(with: fullImageUrl) {[weak self] (result) in
//                  switch result{
//                  case .failure:
//                      DispatchQueue.main.sync{
//                          self?.elementImage.image = UIImage(systemName: "exclamationmark.triangle")
//
//                      }
//                  case .success(let image):
//                      DispatchQueue.main.async {
//                          self?.elementImage.image = image
//
//                      }
//                  }
//
//              }
//          }
      
}
}
