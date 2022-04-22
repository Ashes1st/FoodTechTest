//
//  AddFriendCollectionViewCell.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit

class AddFriendCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var addFriendButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.addFriendButton.layer.cornerRadius = self.addFriendButton.frame.height/2.0
    }

}
