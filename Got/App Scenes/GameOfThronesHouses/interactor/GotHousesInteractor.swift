//
//  GotHousesInteractor.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesInteractor: class {
	var parameters: [String: Any]? { get set }
}

class GotHousesInteractor: IGotHousesInteractor {
    var presenter: IGotHousesPresenter?
    var manager: IGotHousesManager?
    var parameters: [String: Any]?

    init(presenter: IGotHousesPresenter, manager: IGotHousesManager) {
    	self.presenter = presenter
    	self.manager = manager
    }
}
