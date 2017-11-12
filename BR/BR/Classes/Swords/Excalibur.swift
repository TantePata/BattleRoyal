//
//  Excalibur.swift
//  BR
//
//  Created by OFFROY Vincent on 27/10/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Cocoa

class Excalibur: Sword {
    
    required init(name: String, height: Float, width: Float, weight: Float, price: Float, year: Float) {
        super.init(name: name, height: height, width: width, weight: weight, price: price, year: year)
        self.legendary = true
    }
    
    override func bonus() -> Int {
        return Int((self.weight/self.year + self.weight/self.year) * 1.30)
    }
}
