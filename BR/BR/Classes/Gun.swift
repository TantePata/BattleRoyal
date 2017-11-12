//
//  Gun.swift
//  Batelu_Luayalu
//
//  Created by TantePata on 27/10/2017.
//  Copyright © 2017 OFFROY Vincent. All rights reserved.
//

import Foundation

class Gun: IWeapon {
    var bullet: Int
    var name: String
    var height: Float
    var width: Float
    var weight: Float
    var price: Float
    
    func duration() -> Int {
        return Int((self.price / self.weight) * Float(damage()))
    }
    
    func damage() -> Int {
        return Int((self.weight/(self.height * self.width)) + Float(bonus()))
    }
    
    func bonus() -> Int {
        let retour  = (Float(self.bullet) * self.weight)
        return Int(retour / Float((Int(self.weight) % self.bullet) > 1 ?(Int(self.weight) % self.bullet) : 1))
    }
    
    required init(name: String, height: Float, width: Float, weight: Float, price: Float, bullet: Int) {
        self.name = name
        self.height = height
        self.width = width
        self.weight = weight
        self.price = price
        self.bullet = bullet
    }
    
  
}
