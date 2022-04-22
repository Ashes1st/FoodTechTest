//
//  TimeManager.swift
//  FoodTechTest
//
//  Created by Александр on 21.04.2022.
//

import Foundation

protocol TimeManager: AnyObject {
    func getNowTime() -> String
    func getNowDate() -> String
    func getCurrentDay() -> String
}

class TimeManagerImpl: TimeManager {
    
    func getNowTime() -> String {
        let currentDateTime = Date()

        let formatter = DateFormatter()
        formatter.dateFormat = "hh:mm a"

        return formatter.string(from: currentDateTime)
    }
    
    func getNowDate() -> String {
        let currentDateTime = Date()

        let formatter = DateFormatter()
        formatter.dateFormat = "MMM.dd.yyyy"

        return formatter.string(from: currentDateTime)
    }
    
    func getCurrentDay() -> String {
        let currentDateTime = Date()

        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"

        return formatter.string(from: currentDateTime)
    }
    
}
