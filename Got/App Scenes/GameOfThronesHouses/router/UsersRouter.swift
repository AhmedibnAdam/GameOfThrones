//
//  UsersRouter.swift
//  VIPER
//
//  Created by Vortex on 4/7/19.
//  Copyright © 2019 Ibtdi. All rights reserved.
//

import UIKit

protocol UsersRouterProtocol {
    func presentAlert(msg : String , title : String)
    func presentAlertWithoutTitle(msg : String )
    func presentDetails()
}


class UsersRouter: UsersRouterProtocol {
    
    func presentAlertWithoutTitle(msg: String) {
        let alert = UIAlertController(
            title: "",
            message: msg,
            preferredStyle: .alert
        )
        viewController?.present(alert, animated: true, completion: nil)
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 3.0) { // Change
            alert.dismiss(animated: true, completion: nil)
        }
    }
    
  
    weak var viewController: UIViewController?
    func presentAlert(msg : String , title : String) {
    //    self.sortCompletion = sortCompletion
        let alert = UIAlertController(
            title: title,
            message: msg,
            preferredStyle: .actionSheet
        )
        
        alert.addAction(UIAlertAction(
            title: "  Button show details ",
            style: .default
             )
        {
            UIAlertAction in
                self.presentDetails()
            }
        )
       
        
        viewController?.present(alert, animated: true, completion: nil)
    }
    
    
    
    func presentDetails() {
        let detailsModuleViewController = DetailsViewController.init(nibName: "Details", bundle: nil)
        viewController?.navigationController?.pushViewController(detailsModuleViewController, animated: true)
    }
    
}
