//
//  Sword.swift
//  BR
//
//  Created by OFFROY Vincent on 27/10/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Foundation

class Sword: IWeapon {
    
    var name: String
    var height: Float
    var width: Float
    var weight: Float
    var price: Float
    var legendary: Bool
    var year: Float
    
    required init(name: String, height: Float, width: Float, weight: Float, price: Float, year: Float) {
        self.name = name
        self.height = height
        self.width = width
        self.weight = weight
        self.price = price
        self.legendary = false
        self.year = year
    }
    
    func duration() -> Int {
        return Int(self.weight * self.year / self.price)
    }
    
    func damage() -> Int {
        if self.legendary == false || self.duration() <= 10 {
            return Int(((self.weight * self.height * self.width + Float(self.bonus())) / self.year)*0.90)
        }
        return Int(((self.weight * self.height * self.width + Float(self.bonus())) / self.year))
    }
    
    func bonus() -> Int {
        if self.legendary == true {
            return Int(self.weight/self.year)
        }
        return 0;
    }
}
