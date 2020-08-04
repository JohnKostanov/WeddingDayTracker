//
//  WeddingDay.swift
//  WeddingDayTracker
//
//  Created by  Джон Костанов on 04/08/2020.
//  Copyright © 2020 John Kostanov. All rights reserved.
//

import Foundation

class WeddingDay {
    let firstName: String
    let lastName: String
    let weddingDay: Date
    
    init(firstName: String, lastName: String, weddingDay: Date) {
        self.firstName = firstName
        self.lastName = lastName
        self.weddingDay = weddingDay
    }
}
