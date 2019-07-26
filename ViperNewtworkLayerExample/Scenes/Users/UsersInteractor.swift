//
//  Interactor.swift
//  VIPER
//
//  Created by Vortex on 4/7/19.
//  Copyright © 2019 Ibtdi. All rights reserved.
//

import Foundation


protocol UsersInteractorInputProtocol {
    var presenter: UsersInteractorOutputProtocol? { get set }
    func getCharacters()
}

protocol UsersInteractorOutputProtocol: class {
    func usersFetchedSuccessfully(users: Got)
    func usersFetchingFailed(withError error: Error)
}



class UsersInteractor: UsersInteractorInputProtocol {
    
    weak var presenter: UsersInteractorOutputProtocol?
    
    private let usersWorker = UsersWorker()
    
    
    func getCharacters()  {
        MarvelRouter.characters(lang: "en").sendNative(Got.self) { (response) in
            switch response {
                
            case .failure(let error):
                // TODO: - Handle error as you want, printing isn't handling.
                print(error!)
                
                self.presenter?.usersFetchingFailed(withError: error!)
            case .success(let value):
                print(value[0].name!)
                 self.presenter?.usersFetchedSuccessfully(users: value)
                
                // if  response has image
                
            }
        }
    }
    
}
