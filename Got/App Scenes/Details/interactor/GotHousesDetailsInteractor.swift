//
//  GotHousesDetailsInteractor.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import UIKit

protocol IGotHousesDetailsInteractor: class {
	var parameters: [String: Any]? { get set }
}

class GotHousesDetailsInteractor: IGotHousesDetailsInteractor {
    var presenter: IGotHousesDetailsPresenter?
    var manager: IGotHousesDetailsManager?
    var parameters: [String: Any]?

    init(presenter: IGotHousesDetailsPresenter, manager: IGotHousesDetailsManager) {
    	self.presenter = presenter
    	self.manager = manager
    }
}
