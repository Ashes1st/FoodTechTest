//
//  ServiceItem.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import UIKit
import Foundation

enum ServiceItem: String, CaseIterable {
    case sendMoney = "Send Money"
    case receiveMoney = "Receive Money"
    case mobilePrepaid = "Mobile Prepaid"
    case electricityBill = "Electricity Bill"
    case cashbackOffer = "Cashback Offer"
    
    var viewController: UIViewController {
        return UIViewController()
        // EXAMPLE
//        let storyboard = UIStoryboard(name: "Main", bundle: nil)
//        switch self {
//        case .sendMoney:
//            return storyboard.instantiateViewController(withIdentifier: "SendMoneyVC")
//        }
    }
    
    var icon: UIImage {
        switch self {
        case .sendMoney:
            return UIImage(named: "SendMoney")!
        case .receiveMoney:
            return UIImage(named: "ReceiveMoney")!
        case .mobilePrepaid:
            return UIImage(named: "MobilePrepaid")!
        case .electricityBill:
            return UIImage(named: "Electricity")!
        case .cashbackOffer:
            return UIImage(named: "Cashback")!
        }
    }
    
    var displayTitle: String {
        switch self {
        case .sendMoney:
            return NSLocalizedString("Send Money", comment: "Send Money")
        case .receiveMoney:
            return NSLocalizedString("Receive Money", comment: "Receive Money")
        case .mobilePrepaid:
            return NSLocalizedString("Mobile Prepaid", comment: "Mobile Prepaid")
        case .electricityBill:
            return NSLocalizedString("Electricity Bill", comment: "Electricity Bill")
        case .cashbackOffer:
            return NSLocalizedString("Cashback Offer", comment: "Cashback Offer")
        }
    }
}
