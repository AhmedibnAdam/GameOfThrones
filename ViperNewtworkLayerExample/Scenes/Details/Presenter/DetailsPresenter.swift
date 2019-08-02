//
//  DetailsPresenter.swift
//  ViperNewtworkLayerExample
//
//  Created by Adam on 8/2/19.
//  Copyright © 2019 Tamkeen. All rights reserved.
//


import Foundation


protocol DetailsPresenterProtocol: class {
    var view: DetailsViewProtocol? { get set }
    var numberOfRows: Int { get }
    func viewDidLoad()
    func configure(cell: UsersCellView, indexPath: IndexPath)
    func didselectRow()
}

class DetailsPresenter: DetailsPresenterProtocol, UsersInteractorOutputProtocol {
    func configure(cell: UsersCellView, indexPath: IndexPath) {
        
    }
    
    
    
    
    weak var view: DetailsViewProtocol?
    private let interactor: DetailsInteractorInputProtocol
    private let router: DetailsRouterProtocol
//    private var got = [GOTElement]()
    
    var numberOfRows: Int {
        return 7//got.count
    }
    
    init(view: DetailsViewProtocol, interactor: DetailsInteractorInputProtocol, router: DetailsRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        view?.showLoadingIndicator()
      //  interactor.getCharacters()
    }
    
    func usersFetchedSuccessfully(users: Got) {
        view?.hideLoadingIndicator()
      
        
        view?.reloadData()
        
    }
    
    func usersFetchingFailed() {
        view?.hideLoadingIndicator()
        //Failure - Should show alert
        self.showAlert()
    }
    

    func didselectRow() {
        router.presentAlert()
    }
    func showAlert() {
        router.presentAlert()
    }
}
