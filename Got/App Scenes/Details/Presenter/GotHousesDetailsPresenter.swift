//
//  GotHousesDetailsPresenter.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesDetailsPresenter: class {
	// do someting...
}

class GotHousesDetailsPresenter: IGotHousesDetailsPresenter {	
	weak var view: IGotHousesDetailsViewController?
	
	init(view: IGotHousesDetailsViewController?) {
		self.view = view
	}
}
