//
//  ViewController.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/6/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

      @IBOutlet weak var tableView: UITableView!
        
        var movies = [Movie]() {
            didSet{
                DispatchQueue.main.async{
                    self.tableView.reloadData()
                }
            }
        }
        
        override func viewDidLoad() {
            super.viewDidLoad()
            
            tableView.dataSource = self
            tableView.delegate = self
            
            loadMovie()
            
        }
        
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            guard let detailVC = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else{
                fatalError("can't segue")
            }
            detailVC.movie = movies[indexPath.row]
            
        }
        
        private func loadMovie(){
            MovieAPICLient.fetchMovie(completion: {[weak self] (result) in
                switch result{
                case .failure(let appError):
                    DispatchQueue.main.async{
                        self?.showAlert(title: "Unable to load moviess", message: "\(appError)")}
                case .success(let dataArray):
                    self?.movies = dataArray
                    dump(self!.movies)
                }
            })
            
        }
    }



    extension ViewController: UITableViewDataSource, UITableViewDelegate {
        
        func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
            return 150
        }
        
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return movies.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
          let cell = tableView.dequeueReusableCell(withIdentifier: "ghibliCell", for: indexPath)
           
            return cell
        }
        
        
        
    }


