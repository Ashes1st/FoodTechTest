//
//  WalletPresenter.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol WalletPresenter: AnyObject {
    
}

class WalletPresenterImpl: WalletPresenter {
    let viewController: WalletViewController!
    
    init(viewController: WalletViewController) {
        self.viewController = viewController
        
        self.setupSubviews()
    }
    
    private func setupSubviews() {
        let networkService: NetworkService = NetworkServiceImpl()
        let account = networkService.getUserAccount()
        
        viewController.setupBalance(count: account.balance)
        viewController.setupFriends(friends: account.friends)
        
        let services: [ServiceItem] = [.sendMoney, .receiveMoney, .mobilePrepaid, .electricityBill, .cashbackOffer]
        viewController.setupServices(services: services)
    }
}
