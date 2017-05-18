//
//  tripClass.swift
//  09 Lesson, Part 1
//
//  Created by Ika Javakhishvili on 05/1/17.
//  Copyright © 2017 Ika Javakhishvili. All rights reserved.
//

import Foundation


class Trip {
    
    var name: String
    var flights: Int
    var price: Int
    
    init(name: String, flights: Int, price: Int) {
        self.name = name
        self.flights = flights
        self.price = price
    }
    
}
