//
//  MenuConfigurator.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol MenuConfigurator: AnyObject{
    func configure(view: MenuViewControllerImpl)
}

class MenuConfiguratorImpl: MenuConfigurator {
    
    
    func configure(view: MenuViewControllerImpl) {
        let presenter = MenuPresenterImpl(viewController: view)
        
        view.presenter = presenter
    }
}
