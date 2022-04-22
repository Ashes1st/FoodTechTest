//
//  NetworkService.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation
import UIKit

protocol NetworkService: AnyObject {
    func getUserAccount() -> Account
}

class NetworkServiceImpl: NetworkService {
    
    var userFriends: [Friend] = [
        Friend(name: "Mike", image: UIImage(named: "SomeImage")!),
        Friend(name: "Joshpeh", image: UIImage(named: "SomeImage")!),
        Friend(name: "Ashloy", image: UIImage(named: "SomeImage")!)
    ]
    
    func getUserAccount() -> Account {
        let account = Account(
            name: "Carol Black",
            address: "Seattle, Washington",
            image: UIImage(named: "SomeImage")!,
            balance: 20333,
            friends: userFriends
        )
        
        return account
    }
}
