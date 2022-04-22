//
//  Account.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation
import UIKit

struct Account {
    let name: String
    let address: String
    let image: UIImage
    let balance: Int
    var friends: [Friend]
}
