//
//  GotHousesDetailsRouter.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesDetailsRouter: class {
	// do someting...
}

class GotHousesDetailsRouter: IGotHousesDetailsRouter {	
	weak var view: GotHousesDetailsViewController?
	
	init(view: GotHousesDetailsViewController?) {
		self.view = view
	}
}
