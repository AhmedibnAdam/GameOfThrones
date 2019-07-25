//
//  MarvelRouter.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 7/25/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//

import Foundation


import Foundation
import Alamofire
//import AlamofireImage

// all actions made by user
enum MarvelRouter: URLRequestBuilder {
    
    
    
    
    
    case characters(lang: String)
    
    
    // MARK: - Path
    internal var path: String {
        switch self {
        case .characters:
            return "houses"

        }
    }
    
    // MARK: - Parameters
    internal var parameters: Parameters? {
        var params = Parameters.init()
        switch self {
        case .characters(let lang ):
            params["language"] = lang
          
        }
        
        return params
    }
    
    // MARK: - Methods
    internal var method: HTTPMethod {
        switch self {
            
        // loign Method
        case .characters:
            return .get
            
        }
    }
    
}
