//
//  WalletConfigurator.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol WalletConfigurator: AnyObject{
    func configure(view: WalletViewControllerImpl)
}

class WalletConfiguratorImpl: WalletConfigurator {
    
    
    func configure(view: WalletViewControllerImpl) {
        let presenter = WalletPresenterImpl(viewController: view)
        
        view.presenter = presenter
    }
}
