//
//  SortingHatViewController.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/8/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

class SortingHatViewController: UIViewController {

    @IBOutlet weak var timeToSort: UIImageView!
    @IBOutlet weak var sortLabel: UILabel!
    @IBOutlet weak var sortingGif: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

       sortingGif.loadGif(name: "sortinghat")
        timeToSort.loadGif(name: "soRTHAT")
        
        
        
        var sortIngHatArray =  ["Griffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
        var randomElement = sortIngHatArray.randomElement()
        
        sortLabel.text = randomElement
    }
    override func viewWillAppear(_ animated: Bool) {
        var sortIngHatArray =  ["Griffindor", "Hufflepuff", "Slytherin", "Ravenclaw"]
        var randomElement = sortIngHatArray.randomElement()
        
        sortLabel.text = randomElement
    }
    
   
}
  
