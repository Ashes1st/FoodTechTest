//
//  MenuViewController.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

protocol MenuViewController: AnyObject {
    
}

class MenuViewControllerImpl: UIViewController, MenuViewController {

    @IBOutlet weak var appScreenImageView: UIImageView!
    @IBOutlet weak var accountInfoView: UIView!
    @IBOutlet weak var accountImageView: UIImageView!
    
    var presenter: MenuPresenter!
    let configurator: MenuConfigurator = MenuConfiguratorImpl()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configurator.configure(view: self)
        setupSubviews()
    }
    
    private func setupSubviews() {
        appScreenImageView.transform = appScreenImageView.transform.rotated(by: .pi / -12)
        appScreenImageView.layer.cornerRadius = 30
        
        accountInfoView.layer.maskedCorners = .layerMaxXMaxYCorner
        accountInfoView.layer.cornerRadius = 60
        
        accountImageView.layer.cornerRadius = accountImageView.frame.height/2.0
    }
    

    @IBAction func exitButtonDidTouch(_ sender: Any) {
        self.dismiss(animated: true)
    }
    

}
