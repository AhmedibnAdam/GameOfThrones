//
//  UserCell.swift
//  VIPER
//
//  Created by Vortex on 4/7/19.
//  Copyright © 2019 Ibtdi. All rights reserved.
//

import UIKit


protocol UsersCellView {
    func configure(viewModel: GotViewModel)
}


class UserCell: UITableViewCell, UsersCellView {
    
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var userName: UILabel!
    @IBOutlet weak var region: UILabel!
    @IBOutlet weak var coat: UILabel!
    @IBOutlet weak var founded: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        selectionStyle = .none
        setupImageView()
    }
    
    private func setupImageView() {
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
    }
    
    func configure(viewModel: GotViewModel) {
     
        self.userName.text = viewModel.name
        self.coat.text = viewModel.coatOfArms
        self.region.text = viewModel.region
        self.founded.text = viewModel.founded
        
       
    }
    
}
