//
//  DetailsInteactor.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 8/2/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//


import Foundation


protocol DetailsInteractorInputProtocol {
    var presenter: DetailsInteractorOutputProtocol? { get set }
  //  func getCharacters()
}

protocol DetailsInteractorOutputProtocol: class {
 //   func usersFetchedSuccessfully(users: Got)
 //   func usersFetchingFailed()
}



class DetailsInteractor: DetailsInteractorInputProtocol {
    
    weak var presenter: DetailsInteractorOutputProtocol?
    

    
    
    
}

