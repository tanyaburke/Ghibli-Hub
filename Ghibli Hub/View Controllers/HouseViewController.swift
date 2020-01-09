//
//  HouseViewController.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/9/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//

import UIKit

class HouseViewController: UIViewController {
 
    
    @IBOutlet weak var housetableView: UITableView!
    
    var characters = [Characters]()
       
    
      
    
    @IBOutlet weak var hufflepuff: UIButton!
    @IBOutlet weak var ravenclaw: UIButton!
    @IBOutlet weak var slytherin: UIButton!
    @IBOutlet weak var grifyndor: UIButton!
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    private func loadSlytherin()-> [Characters]{
                HogwartsAPICLient.fetchHouse(house: "slytherin") {[weak self] (result) in
                       switch result{
                                 case .failure(let appError):
                                     DispatchQueue.main.async{
                                         self?.showAlert(title: "Unable to load characters", message: "\(appError)")}
                                 case .success(let dataArray):
                                     self?.characters = dataArray
                                     
                                 }
                             }
        return characters
                }

    
//    var slytherinCharacter = characters.filter(characters.ho)
////
//     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//         guard let detailVC = segue.destination as? DetailViewController, let indexPath = indexPathForSelectedRow else{
//             fatalError("can't segue")
////         }
//         detailVC.character = characters[indexPath.row]
         
    @IBAction func gryffindorPressed(_ sender: Any) {
       
//        guard let  tableViewController
//            = storyboard?.instantiateViewController(identifier: "houseTableView") as? HouseTableViewController else {
//            fatalError("failed to downcast to podcast detailcontroller")
//        }
//        //2. we need to get the selected object(podcast)
//
//        let characters = loadSlytherin()
//            tableViewController.characters = characters
//            navigationController?.pushViewController(tableViewController, animated: true)
        }
    
    @IBAction func hufflrpuffPressed(_ sender: Any) {
        
//        guard let  tableViewController
//                   = storyboard?.instantiateViewController(identifier: "tableViewController") as? ViewController else {
//                   fatalError("failed to downcast to podcast detailcontroller")
//               }
               //2. we need to get the selected object(podcast)

//        let characters =
//            tableViewController.characters = characters
//                   navigationController?.pushViewController(tableViewController, animated: true)
//               }
//
//    @IBAction func ravenclawPressed(_ sender: Any) {
//
//        characters.sort(by:)
//    }
//    @IBAction func slytherinPressed(_ sender: Any) {
//    }
//
//
//}
//
    

}
}
