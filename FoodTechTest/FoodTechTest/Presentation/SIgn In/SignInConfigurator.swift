//
//  SignInConfigurator.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol SignInConfigurator: AnyObject{
    func configure(view: SignInViewControllerImpl)
}

class SignInConfiguratorImpl: SignInConfigurator {
    
    
    func configure(view: SignInViewControllerImpl) {
        let presenter = SignInPresenterImpl(viewController: view)
        
        view.presenter = presenter
    }
}
