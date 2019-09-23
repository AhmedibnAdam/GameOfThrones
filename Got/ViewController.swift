//
//  ViewController.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 7/25/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        callNetworkLayer()
        // Do any additional setup after loading the view.
    }

    func callNetworkLayer()  {
        MarvelRouter.characters(lang: "en").sendNative(Got.self) { (response) in
            switch response {
            case .failure(let error):
                // TODO: - Handle error as you want, printing isn't handling.
                print(error!)
            case .success(let value):
                print(value[0].name!)
                
                
                // if  response has image
               
                
            }
        }
    }
}



