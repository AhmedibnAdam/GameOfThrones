//
//  GotHousesViewController.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesViewController: class {
	var router: IGotHousesRouter? { get set }
}

class GotHousesViewController: UIViewController {
	var interactor: IGotHousesInteractor?
	var router: IGotHousesRouter?

	override func viewDidLoad() {
        super.viewDidLoad()
		// do someting...
    }
}

extension GotHousesViewController: IGotHousesViewController {
	// do someting...
}

extension GotHousesViewController {
	// do someting...
}

extension GotHousesViewController {
	// do someting...
}
