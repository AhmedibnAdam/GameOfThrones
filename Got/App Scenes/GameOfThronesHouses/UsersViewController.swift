//
//  UsersViewController.swift
//  VIPER
//
//  Created by Vortex on 4/7/19.
//  Copyright © 2019 Ibtdi. All rights reserved.
//

import UIKit
import Connectivity

protocol UsersViewProtocol: class {
    var presenter: UsersPresenterProtocol! { get set }
    func showLoadingIndicator()
    func hideLoadingIndicator()
    func reloadData()
    func reachablityNetwork()
}



class UsersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate, UsersViewProtocol {
  
    
    fileprivate let connectivity: Connectivity = Connectivity()
 //   fileprivate var isCheckingConnectivity: Bool = false
    
    
    var presenter: UsersPresenterProtocol!
    
    @IBOutlet weak var usersTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter.viewDidLoad()
         setupTableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        connectivity.framework = .network
        configureConnectivityNotifier()
       
        startConnectivityChecks()
    }
    
    private func setupTableView() {
        usersTableView.dataSource = self
        usersTableView.delegate = self
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return presenter.numberOfRows 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "UserCell", for: indexPath) as! UserCell
        presenter.configure(cell: cell, indexPath: indexPath)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        presenter.didselectRow()
    }
  
    func showLoadingIndicator() {
        print("Should show loading indicator")
    }
    
    func hideLoadingIndicator() {
        print("Should hide loading indicator")
    }
    
    func reloadData() {
        
        DispatchQueue.main.async {
            self.usersTableView.reloadData()
        }
    }
    
    func reachablityNetwork() {
        presenter.reachabilityStatus()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        connectivity.stopNotifier()
    }
    
    deinit {
        connectivity.stopNotifier()
    }


}

private extension UsersViewController {
    func configureConnectivityNotifier() {
        let connectivityChanged: (Connectivity) -> Void = { [weak self] connectivity in
            self?.updateConnectionStatus(connectivity.status)
        }
        connectivity.whenConnected = connectivityChanged
        connectivity.whenDisconnected = connectivityChanged
    }
    
    func performSingleConnectivityCheck() {
        connectivity.checkConnectivity { connectivity in
            self.updateConnectionStatus(connectivity.status)
        }
    }
    
    func startConnectivityChecks() {
        //    activityIndicator.startAnimating()
        connectivity.startNotifier()
        //    isCheckingConnectivity = true
        //  segmentedControl.isEnabled = false
        //  updateNotifierButton(isCheckingConnectivity: isCheckingConnectivity)
    }
    
    func stopConnectivityChecks() {
        //   activityIndicator.stopAnimating()
        connectivity.stopNotifier()
        //   isCheckingConnectivity = false
        //   segmentedControl.isEnabled = true
        //  updateNotifierButton(isCheckingConnectivity: isCheckingConnectivity)
    }
    
    func updateConnectionStatus(_ status: Connectivity.Status) {
        switch status {
        case  .connected:
            print("connected")
        case .notConnected:
            print("not connected")
            reachablityNetwork()
        case .connectedViaCellularWithoutInternet:
            print("no internet")
            reachablityNetwork()
        case .connectedViaWiFiWithoutInternet:
            print("no internot")
            reachablityNetwork()
        case .connectedViaCellular:
            print("connected")
        case .connectedViaWiFi:
            print("connected")
        }
        
    }

}
