//
//  GotHousesConfiguration.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import Foundation
import UIKit

class GotHousesConfiguration {
    static func setup(parameters: [String: Any] = [:]) -> UIViewController {
        let controller = GotHousesViewController()
        let router = GotHousesRouter(view: controller)
        let presenter = GotHousesPresenter(view: controller)
        let manager = GotHousesManager()
        let interactor = GotHousesInteractor(presenter: presenter, manager: manager)
        
        controller.interactor = interactor
        controller.router = router
        interactor.parameters = parameters
        return controller
    }
}