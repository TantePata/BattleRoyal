//
//  main.swift
//  BR
//
//  Created by TantePata on 27/10/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Foundation

print("------------------------")
print("|                      |")
print("| BATTELU LOYALUUUUUU! |")
print("|                      |")
print("------------------------")

var swords: [String: Sword] = [
    "iDagger": Sword(name: "Dague de fer",               height: 20.0, width: 5.0, weight: 2.0, price: 18.0, year: 5),
    "iSword": Sword(name: "Epee de fer",                 height: 60.0, width: 7.0, weight: 9.0, price: 45.0, year: 5),
    "iGreatSword": Sword(name: "Grande Epee de fer",     height: 110.0, width: 9.0, weight: 16, price: 90.0, year: 5),
    "sDagger": Sword(name: "Dague d'acier",              height: 20.0, width: 5.0, weight: 2.5, price: 18.0, year: 5),
    "sSword": Sword(name: "Epee d'acier",                height: 60.0, width: 7.0, weight: 10.0, price: 45.0, year: 5),
    "sGreatSword": Sword(name: "Grande Epee d'acier",    height: 110.0, width: 9.0, weight: 17.0, price: 90.0, year: 5),
    "lFlame": Excalibur(name: "LA FLAMME ETERNELLE DE L'EMPIRE DES HOMMES", height: 110.0, width: 9.0, weight: 17.0, price: 90.0, year: 200)
]
print("Liste des armes : ")
for weapon in swords.values {
    print(weapon.name)
}

var fighters: [String: Character] = [
    "Svorn": Character(name: "Svorn", health: 40000, weapon: swords["iGreatSword"]!)
]


