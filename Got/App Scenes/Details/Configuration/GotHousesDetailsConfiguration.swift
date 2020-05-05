//
//  GotHousesDetailsConfiguration.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import Foundation
import UIKit

class GotHousesDetailsConfiguration {
    static func setup(parameters: [String: Any] = [:]) -> UIViewController {
        let controller = GotHousesDetailsViewController()
        let router = GotHousesDetailsRouter(view: controller)
        let presenter = GotHousesDetailsPresenter(view: controller)
        let manager = GotHousesDetailsManager()
        let interactor = GotHousesDetailsInteractor(presenter: presenter, manager: manager)
        
        controller.interactor = interactor
        controller.router = router
        interactor.parameters = parameters
        return controller
    }
}