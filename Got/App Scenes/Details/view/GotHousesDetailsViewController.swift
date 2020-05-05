//
//  GotHousesDetailsViewController.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesDetailsViewController: class {
	var router: IGotHousesDetailsRouter? { get set }
}

class GotHousesDetailsViewController: UIViewController {
	var interactor: IGotHousesDetailsInteractor?
	var router: IGotHousesDetailsRouter?

	override func viewDidLoad() {
        super.viewDidLoad()
		// do someting...
    }
}

extension GotHousesDetailsViewController: IGotHousesDetailsViewController {
	// do someting...
}

extension GotHousesDetailsViewController {
	// do someting...
}

extension GotHousesDetailsViewController {
	// do someting...
}
