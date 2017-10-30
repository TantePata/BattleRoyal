//
//  Excalibur.swift
//  BR
//
//  Created by OFFROY Vincent on 27/10/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Cocoa

class Excalibur: Sword {
    
    override func bonus() -> Int {
        return Int((self.weight/self.year + self.weight/self.year) * 1.30)
    }
}
