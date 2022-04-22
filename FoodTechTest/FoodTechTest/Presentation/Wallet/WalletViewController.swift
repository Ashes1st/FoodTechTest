//
//  WalletViewController.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

protocol WalletViewController: AnyObject {
    func setupBalance(count: Int)
    func setupFriends(friends: [Friend])
    func setupServices(services: [ServiceItem])
}

class WalletViewControllerImpl: UIViewController, WalletViewController {

    @IBOutlet weak var accountOverviewView: UIView!
    @IBOutlet weak var addBalanceButton: UIButton!
    @IBOutlet weak var currentBalanceLabel: UILabel!
    
    @IBOutlet weak var friendsCollection: FriendCollection!
    @IBOutlet weak var serviceCollection: ServiceCollection!
    
    
    var presenter: WalletPresenter!
    let configurator: WalletConfigurator = WalletConfiguratorImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        configurator.configure(view: self)
        self.setupSubviews()
    }

    private func setupSubviews() {
        self.addBalanceButton.layer.cornerRadius = self.addBalanceButton.frame.height/2.0
        self.accountOverviewView.layer.cornerRadius = 12
    }
    
    func setupBalance(count: Int) {
        if count < 1000 {
            self.currentBalanceLabel.text = "\(count)"
        } else if count < 1000000 {
            self.currentBalanceLabel.text = "\(count/1000),\(count%1000)"
        }
    }
    
    func setupFriends(friends: [Friend]) {
        friendsCollection.setupFriends(friends: friends)
    }
    
    func setupServices(services: [ServiceItem]) {
        serviceCollection.setupServices(with: services)
    }
}
