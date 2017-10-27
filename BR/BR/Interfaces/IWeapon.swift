//
//  IWeapon.swift
//  Batelu_Luayalu
//
//  Created by OFFROY Vincent on 27/10/2017.
//  Copyright © 2017 OFFROY Vincent. All rights reserved.
//

import Cocoa

public protocol IWeapon {
    var name : String {get set}
    var height : Float {get set}
    var width : Float {get set}
    var weight : Float {get set}
    var price : Float {get set}
    
    init(name : String, height : Float, width : Float, weight : Float, price : Float)
    
    func duration() -> Int
    
    func damage() -> Int
    
    func bonus() -> Int
}
