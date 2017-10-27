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
    var name : String
    var height : Float
    var width : Float
    var weight : Float
    var price : Float
    
    required init(name: String, height: Int, width: Int, weight: Int, price: Float) {
        <#code#>
    }
    
    func duration() -> Int {
        <#code#>
    }
    
    func damage() -> Int {
        <#code#>
    }
    
    func bonus() -> Int {
        <#code#>
    }
    
    
    
    init(bullet: Int = 0) {
        self.bullet = bullet
    }
    
    public func duration() -> Int {
        return Int(self.price / self.weight)
    }
    func damage() -> Int {
        <#code#>
    }
    func bonus() -> Int {
        <#code#>
    }
}
