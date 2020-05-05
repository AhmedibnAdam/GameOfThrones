//
//  GotHousesPresenter.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesPresenter: class {
	// do someting...
}

class GotHousesPresenter: IGotHousesPresenter {	
	weak var view: IGotHousesViewController?
	
	init(view: IGotHousesViewController?) {
		self.view = view
	}
}
