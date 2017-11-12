//
//  Character.swift
//  BR
//
//  Created by OFFROY Vincent on 01/11/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Foundation
class Character {
    
    var name: String
    var health : Int
    var hitChance : Int
    var weapon : IWeapon
    
    required init(name: String, health: Int, weapon: IWeapon) {
        self.name = name
        if health < 25000{
            self.health = 25000
        }
        else {
            self.health = health
        }
        self.hitChance = Int(arc4random_uniform(21) + 50);
        self.weapon = weapon
    }
    
    func protect(valeurAttaque: Int) {
        self.health = self.health - Int(Float(valeurAttaque) * 0.55)
        if self.health <= 0{
            
        }
    }
    
    func attack(character: Character) {
        if character.name != self.name && self.hitChance >= Int(arc4random_uniform(101)){
            character.protect(valeurAttaque: self.weapon.damage())
        }
    }
}
