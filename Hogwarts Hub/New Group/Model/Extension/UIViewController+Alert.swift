//
//  UIViewController+Alert.swift
//  Ghibli Hub
//
//  Created by Tanya Burke on 1/7/20.
//  Copyright © 2020 Tanya Burke. All rights reserved.
//


import UIKit

extension UIViewController {
      func showAlert(title: String, message: String, completion: ((UIAlertAction) -> Void)? = nil) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: completion)
        alertController.addAction(okAction)
        present(alertController, animated: true, completion: nil)
      }
    }


