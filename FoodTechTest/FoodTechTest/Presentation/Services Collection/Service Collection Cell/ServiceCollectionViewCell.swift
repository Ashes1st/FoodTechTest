//
//  ServiceCollectionViewCell.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

class ServiceCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var cardImageView: UIImageView!
    @IBOutlet weak var serviceNameLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupSubviews()
    }
    
    private func setupSubviews() {
        self.cardView.layer.cornerRadius = 12.0
    }

    func setup(service: ServiceItem) {
        self.cardImageView.image = service.icon
        self.serviceNameLabel.text = service.displayTitle
    }
}
