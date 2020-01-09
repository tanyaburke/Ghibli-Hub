////
////  CollectionViewController.swift
////  Ghibli Hub
////
////  Created by Tanya Burke on 1/8/20.
////  Copyright © 2020 Tanya Burke. All rights reserved.
////
//
//import UIKit
//
//  
//class HouseTableViewController: UITableViewController {
//
//@IBOutlet weak var housetableView: UITableView!
//   
//   var characters = [Characters]() {
//       didSet{
//           DispatchQueue.main.async{
//               self.tableView.reloadData()
//           }
//       }
//   }
//  
//   
//   override func viewDidLoad() {
//       super.viewDidLoad()
//
//        housetableView.dataSource = self
//
//               
//               loadSlytherin()
//   }
//   
//
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        guard let detailVC = segue.destination as? DetailViewController, let indexPath = tableView.indexPathForSelectedRow else{
//            fatalError("can't segue")
//        }
//        detailVC.character = characters[indexPath.row]
//        
//    }
//    
//    private func loadSlytherin(){
//        HogwartsAPICLient.fetchHouse(house: "slytherin") {[weak self] (result) in
//               switch result{
//                         case .failure(let appError):
//                             DispatchQueue.main.async{
//                                 self?.showAlert(title: "Unable to load characters", message: "\(appError)")}
//                         case .success(let dataArray):
//                             self?.characters = dataArray
//                             dump(self!.characters)
//                         }
//                     }
//        }
//        
//   
//   private func loadGryffindor(){
//   HogwartsAPICLient.fetchHouse(house: "gryffindor") {[weak self] (result) in
//          switch result{
//                    case .failure(let appError):
//                        DispatchQueue.main.async{
//                            self?.showAlert(title: "Unable to load characters", message: "\(appError)")}
//                    case .success(let dataArray):
//                        self?.characters = dataArray
//                        dump(self!.characters)
//                    }
//                }
//   }
//   
//   private func loadRavenclaw(){
//   HogwartsAPICLient.fetchHouse(house: "ravenclaw") {[weak self] (result) in
//          switch result{
//                    case .failure(let appError):
//                        DispatchQueue.main.async{
//                            self?.showAlert(title: "Unable to load characters", message: "\(appError)")}
//                    case .success(let dataArray):
//                        self?.characters = dataArray
//                        dump(self!.characters)
//                    }
//                }
//   }
//   
//   private func loadHufflepuff(){
//   HogwartsAPICLient.fetchHouse(house: "hufflepuff") {[weak self] (result) in
//          switch result{
//                    case .failure(let appError):
//                        DispatchQueue.main.async{
//                            self?.showAlert(title: "Unable to load characters", message: "\(appError)")}
//                    case .success(let dataArray):
//                        self?.characters = dataArray
//                        dump(self!.characters)
//                    }
//                }
//   }
//
//
//    
//    func housetableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return characters.count
//    }
//    
//    func housetableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ghibliCell", for: indexPath)
//        cell.textLabel?.text = characters[indexPath.row].name
//        cell.imageView?.getImage(with: characters[indexPath.row].image, completion: { (result) in
//            DispatchQueue.main.async{
//                switch result{
//                case .failure:
//                    cell.imageView?.image = UIImage(named: "exclamationmark")
//                case .success(let imageOk):
//                    cell.imageView?.image = imageOk
//                }
//            }
//        })
//        return cell
//    }
//    
//    
//    
//}
