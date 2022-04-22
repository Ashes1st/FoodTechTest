//
//  SignInViewController.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

protocol SignInViewController: AnyObject {
    func setupTime(time: String, date: String)
}

class SignInViewControllerImpl: UIViewController, SignInViewController {

    
    @IBOutlet weak var timeLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var signInButton: UIButton!
    @IBOutlet weak var createAnAccountButton: UIButton!
    
    var presenter: SignInPresenter!
    let configurator: SignInConfigurator = SignInConfiguratorImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurator.configure(view: self)
        setupSubviews()
    }
    
    
    private func setupSubviews() {
        self.signInButton.layer.cornerRadius = 10
    }
    
    func setupTime(time: String, date: String) {
        self.timeLabel.text = time
        self.dateLabel.text = date
    }
}
