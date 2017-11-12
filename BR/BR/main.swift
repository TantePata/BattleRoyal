//
//  main.swift
//  BR
//
//  Created by TantePata on 27/10/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Foundation




var swords: [Sword] = [
    Sword(name: "Une Dague de fer",               height: 20.0, width: 5.0, weight: 2.0, price: 18.0, year: 5),
    Sword(name: "Une Epee de fer",                 height: 60.0, width: 7.0, weight: 9.0, price: 45.0, year: 5),
    Sword(name: "Une Grande Epee de fer",     height: 110.0, width: 9.0, weight: 16, price: 90.0, year: 5),
    Sword(name: "Une Dague d'acier",              height: 20.0, width: 5.0, weight: 2.5, price: 18.0, year: 5),
    Sword(name: "Une Epee d'acier",                height: 60.0, width: 7.0, weight: 10.0, price: 45.0, year: 5),
    Sword(name: "Une Grande Epee d'acier",    height: 110.0, width: 9.0, weight: 17.0, price: 90.0, year: 5),
    Excalibur(name: "LA FLAMME ETERNELLE DE L'EMPIRE DES HOMMES", height: 110.0, width: 9.0, weight: 17.0, price: 90.0, year: 200)
]

var fighters: [Character] = [
    Character(name: "Lakiss",       health: 40000,  weapon: swords[0]),
    Character(name: "Svorn",        health: 25,     weapon: swords[2])
]





print("-------------------------------------------------")
print("|                                               |")
print("| BIENVENUE DANS LA GRANDE BATTELU LOUAYALUUUUU |")
print("|                                               |")
print("-------------------------------------------------\n")

print("Quel est ton nom jeune combattant ? : ")
readLine()!

print("\nTrès bien Jean Jacques, choisis ton arme :")
for (index, sword) in swords.enumerated() {
    print(index, " - ", sword.name)
}

print("")

var chosenWeapon = swords[Int(readLine()!)!]

fighters.append(Character(name: "Jean Jacques", health: 40000, weapon: chosenWeapon))

print("Tu as choisi comme arme : ",chosenWeapon.name)

print("\nListe des combattants : ")
for fighter in fighters {
    print("-" + fighter.name + " avec " + (fighter.weapon?.name)!)
}

print("\n-------------------------------------------------")
print("|                    FIGHT                      |")
print("-------------------------------------------------\n")

//A TOI HERVÉ
