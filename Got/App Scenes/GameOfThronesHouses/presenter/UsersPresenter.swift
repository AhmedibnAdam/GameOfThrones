//
//  UsersPresenter.swift
//  VIPER
//
//  Created by Vortex on 4/7/19.
//  Copyright © 2019 Ibtdi. All rights reserved.
//

import Foundation


protocol UsersPresenterProtocol: class {
    var view: UsersViewProtocol? { get set }
    var numberOfRows: Int { get }
    func viewDidLoad()
    func configure(cell: UsersCellView, indexPath: IndexPath)
    func didselectRow()
    func reachabilityStatus()
}

class UsersPresenter: UsersPresenterProtocol, UsersInteractorOutputProtocol {

    weak var view: UsersViewProtocol?
    private let interactor: UsersInteractorInputProtocol
    private let router: UsersRouterProtocol
    private var got = [GOTElement]()
    
    var numberOfRows: Int {
        return got.count
    }
    
    init(view: UsersViewProtocol, interactor: UsersInteractorInputProtocol, router: UsersRouterProtocol) {
        self.view = view
        self.interactor = interactor
        self.router = router
    }
    
    func viewDidLoad() {
        view?.showLoadingIndicator()
        interactor.getCharacters()
    }
    
    func usersFetchedSuccessfully(users: Got) {
        view?.hideLoadingIndicator()
        for g in users {
            self.got.append(g)
        }
        
        view?.reloadData()
    
    }
    
    func usersFetchingFailed() {
        view?.hideLoadingIndicator()
        //Failure - Should show alert
        self.showAlert()
    }
    
    func configure(cell: UsersCellView, indexPath: IndexPath) {
        let got = self.got[indexPath.row]
        let viewModel = GotViewModel(got: got)
        cell.configure(viewModel: viewModel)
    }
    func didselectRow() {
        router.presentAlert(msg: "message", title: "Alert")
      //  router.presentDetails()
    }
    func showAlert() {
        router.presentAlert(msg: "Alert1", title: "Alert1")
    }
    
    func reachabilityStatus() {
        router.presentAlertWithoutTitle(msg: "No Internet Connection ! ")
    }
    
}
