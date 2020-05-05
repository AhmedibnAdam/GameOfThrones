//
//  GotHousesRouter.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesRouter: class {
	// do someting...
}

class GotHousesRouter: IGotHousesRouter {	
	weak var view: GotHousesViewController?
	
	init(view: GotHousesViewController?) {
		self.view = view
	}
}
