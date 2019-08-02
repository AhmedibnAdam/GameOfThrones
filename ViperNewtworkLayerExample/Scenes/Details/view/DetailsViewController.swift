//
//  DetailsViewController.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 8/2/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//

import UIKit

protocol DetailsViewProtocol: class {
    var presenter: DetailsPresenterProtocol! { get set }
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func reloadData()
}


class DetailsViewController: UIViewController , DetailsViewProtocol {
    func showLoadingIndicator() {
        
    }
    
    func hideLoadingIndicator() {
        
    }
    
    func reloadData() {
        
    }
    

    
    var presenter: DetailsPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
