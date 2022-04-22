//
//  FriendsCollectionViewCell.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

class FriendsCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var cardView: UIView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    func setup(with friend: Friend) {
        self.cardView.layer.cornerRadius = 12
        self.imageView.layer.cornerRadius = self.imageView.frame.height/2.0
        self.imageView.image = friend.image
        self.nameLabel.text = friend.name
    }
}
