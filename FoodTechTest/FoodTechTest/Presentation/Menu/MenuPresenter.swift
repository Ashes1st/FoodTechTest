//
//  MenuPresenter.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol MenuPresenter: AnyObject {
    
}

class MenuPresenterImpl: MenuPresenter {
    
    let viewController: MenuViewController!
    
    init(viewController: MenuViewController) {
        self.viewController = viewController
    }
    
}
