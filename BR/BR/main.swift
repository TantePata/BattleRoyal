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

var guns: [Gun] = [
    Gun(name: "glock", height: 10, width: 15, weight: 3, price: 100, bullet: 6),
    Gun(name: "UZI", height: 20, width: 20, weight: 5, price: 1000, bullet: 50),
    Gun(name: "AK-47", height: 25, width: 50, weight: 10, price: 1000, bullet: 37),
    Gun(name: "Lance Roquette", height: 30, width: 100, weight: 20, price: 5000, bullet: 1),
    Gun(name: "Missile Nucleaire", height: 10000, width: 100, weight: 100000, price: 1000000, bullet: 1)
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

var typeWeapon = 10
var myS = swords[0]
var myG = guns[0]

repeat{
    print("\nTrès bien Jean Jacques, une épée(0) ou un flingue(1) ?")
    typeWeapon = Int(readLine()!)!
    print(typeWeapon)
} while(typeWeapon < 1 && typeWeapon < 0)

if (typeWeapon == 0) {
    for (index, sword) in swords.enumerated() {
        print(index, " - ", sword.name)
    }
    myS = swords[Int(readLine()!)!]
} else {
    for (index, gun) in guns.enumerated() {
        print(index, " - ", gun.name)
    }
    myG = guns[Int(readLine()!)!]
}
//var chose = Int(readLine()!)!
var chosenWeapon:IWeapon = (typeWeapon == 0 ? myS : myG)
//var chosenWeapon = swords[Int(readLine()!)!]

print("")


fighters.append(Character(name: "Jean Jacques", health: 40000, weapon: chosenWeapon))

print("Tu as choisi comme arme : ",chosenWeapon.name)

print("\nListe des combattants : ")
for fighter in fighters {
    print("-" + fighter.name + " avec " + (fighter.weapon?.name)!)
}
var startFighter = fighters.count
print("\n-------------------------------------------------")
print("|                    FIGHT                      |")
print("-------------------------------------------------\n")

//A TOI HERVÉ
var round:Int = 0
repeat{
    print("\n ROUND " + String(round))
    for fighter in fighters {
        let random =  arc4random_uniform(UInt32(fighters.count))
        let attacked = fighters[Int(random)]
        print(fighter.name + "(" + String(fighter.health) + "PV) attaque ", attacked.name + "(" + String(attacked.health) + "PV)")
        fighter.attack(character: attacked)
        if (attacked.health <= 0){
            fighters.remove(at: Int(random))
        }
    }
    round += 1
}while(fighters.count > startFighter/2)

print("Fin ! " +  fighters[0].name + " Gagne")




























