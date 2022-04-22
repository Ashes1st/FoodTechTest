//
//  VerticalStackView.swift
//  FoodTechTest
//
//  Created by Александр on 22.04.2022.
//

import UIKit

class VerticalStackView: UIView, NibLoadable {

    @IBOutlet weak var stackView: UIStackView!
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupFromNib()
        
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupFromNib()
        
    }

}
