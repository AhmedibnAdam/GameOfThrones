//
//  UsersRouter.swift
//  VIPER
//
//  Created by Vortex on 4/7/19.
//  Copyright © 2019 Ibtdi. All rights reserved.
//

import UIKit

protocol UsersRouterProtocol {
    func presentAlert()
}


class UsersRouter: UsersRouterProtocol {
    
    weak var viewController: UIViewController?
    
    func presentAlert() {
    //    self.sortCompletion = sortCompletion
        
        let alert = UIAlertController(
            title: "Default Alert",
            message: nil,
            preferredStyle: .actionSheet
        )
        
        alert.addAction(UIAlertAction(
            title: " Dismiss Button in Default Alert ",
            style: .default
             )
        )
       
        
        viewController?.present(alert, animated: true, completion: nil)
    }
    
//    func presentDetails(forArticle article: Article) {
//        let detailsModuleViewController = DetailsRouter.assembleModule(article)
//        viewController?.navigationController?.pushViewController(detailsModuleViewController, animated: true)
//    }
    
}
