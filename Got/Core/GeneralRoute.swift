//
//  GeneralRoute.swift
//  Got
//
//  Created by Adam on 5/5/20.
//  Copyright (c) 2020 Tamkeen. All rights reserved.
//  Modify By:  * Ari Munandar
//              * arimunandar.dev@gmail.com
//              * https://github.com/arimunandar

import Foundation
import UIKit

enum GeneralRoute: IRouter {
   case houses
   case housesDetails(parameter: [String: Any])
}

extension GeneralRoute {
    var module: UIViewController? {
      
         
         switch self {
         case .houses:
            return GotHousesConfiguration.setup()
        case .housesDetails(let parameters):
            return GotHousesDetailsConfiguration.setup(parameters: parameters)
         }
         
    }
}
