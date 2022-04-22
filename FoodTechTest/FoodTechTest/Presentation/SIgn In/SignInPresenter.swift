//
//  SignInPresenter.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol SignInPresenter: AnyObject {
    
}

class SignInPresenterImpl: SignInPresenter {
    
    let viewController: SignInViewController!
    
    init(viewController: SignInViewController) {
        self.viewController = viewController
        
        self.setupSubviews()
    }
    
    private func setupSubviews() {
        
        let timeManager: TimeManager = TimeManagerImpl()
        let time: String = timeManager.getNowTime()
        let date: String = "\(timeManager.getNowDate()) | \(timeManager.getCurrentDay())"
        viewController.setupTime(time: time, date: date)
    }
}
