//
//  DetailsRouter.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 8/2/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//


import UIKit

protocol DetailsRouterProtocol {
    func presentAlert()
}


class DetailsRouter: DetailsRouterProtocol {
    
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
    
//    func presentDetails(forArticle article: DetailsViewController) {
//        let detailsModuleViewController = DetailsModuleBuilder.createModule()
//        viewController?.navigationController?.pushViewController(detailsModuleViewController, animated: true)
//    }
    
}
