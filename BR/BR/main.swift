//
//  main.swift
//  BR
//
//  Created by TantePata on 27/10/2017.
//  Copyright © 2017 TantePata. All rights reserved.
//

import Foundation



var weapons: [String : [IWeapon]] = [
    "Swords" :
    [
        Sword(name: "Une Dague de fer",               height: 20.0, width: 5.0, weight: 2.0, price: 18.0, year: 5),
        Sword(name: "Une Epee de fer",                 height: 60.0, width: 7.0, weight: 9.0, price: 45.0, year: 5),
        Sword(name: "Une Grande Epee de fer",     height: 110.0, width: 9.0, weight: 16, price: 90.0, year: 5),
        Sword(name: "Une Dague d'acier",              height: 20.0, width: 5.0, weight: 2.5, price: 18.0, year: 5),
        Sword(name: "Une Epee d'acier",                height: 60.0, width: 7.0, weight: 10.0, price: 45.0, year: 5),
        Sword(name: "Une Grande Epee d'acier",    height: 110.0, width: 9.0, weight: 17.0, price: 90.0, year: 5),
        Excalibur(name: "LA FLAMME ETERNELLE DE L'EMPIRE DES HOMMES", height: 110.0, width: 9.0, weight: 17.0, price: 90.0, year: 200)
    ],
    "Guns" :
    [
        Gun(name: "glock", height: 10, width: 15, weight: 3, price: 100, bullet: 6),
        Gun(name: "UZI", height: 20, width: 20, weight: 5, price: 1000, bullet: 50),
        Gun(name: "AK-47", height: 25, width: 50, weight: 10, price: 1000, bullet: 37),
        Gun(name: "Lance Roquette", height: 30, width: 100, weight: 20, price: 5000, bullet: 1),
        Gun(name: "Lance missile thermo nucléaire global", height: 10000, width: 100, weight: 100000, price: 1000000, bullet: 1)
    ]
]

print("Combien d'adversaires ?")
var fighters = [Character]()

if let range = Int(readLine()!){
    for index in 1...range {
        let choice = Int(arc4random_uniform(2))
        if choice == 0 {
            fighters.append(Character(name: ("Combattant " + String(index)), health: Int(arc4random_uniform(75001) + 25000), weapon: weapons["Guns"]![Int(arc4random_uniform(5))]))
        } else {
            fighters.append(Character(name: ("Combattant " + String(index)), health: Int(arc4random_uniform(75001) + 25000), weapon: weapons["Swords"]![Int(arc4random_uniform(7))]))
        }
    }
}

print("-------------------------------------------------")
print("|                                               |")
print("| BIENVENUE DANS LA GRANDE BATTELU LOUAYALUUUUU |")
print("|                                               |")
print("-------------------------------------------------\n")

print("Quel est ton nom jeune combattant ? : ")
var theChosenOne:String = readLine()!

var typeWeapon = 10
var myS =  weapons["Swords"]![0]
var myG =  weapons["Guns"]![0]

repeat{
    print("\nTrès bien", theChosenOne, ", une épée(0) ou un flingue(1) ?")
    typeWeapon = Int(readLine()!)!
    print(typeWeapon)
} while(typeWeapon < 1 && typeWeapon < 0)

if (typeWeapon == 0) {
    print("Choisis ton épée")
    for (index, sword) in  (weapons["Swords"]?.enumerated())! {
        print(index, " - ", sword.name)
    }
    myS = weapons["Swords"]![Int(readLine()!)!]
} else {
    print("Choisis ton flingue")
    for (index, gun) in  (weapons["Guns"]?.enumerated())! {
        print(index, " - ", gun.name)
    }
    myG =  weapons["Guns"]![Int(readLine()!)!]
}
var chosenWeapon:IWeapon = (typeWeapon == 0 ? myS : myG)

print("")


fighters.append(Character(name: theChosenOne, health: 40000, weapon: chosenWeapon))

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
var round:Int = 1
repeat{
    print("\nROUND " + String(round))
    for fighter in fighters {
        let random =  arc4random_uniform(UInt32(fighters.count))
        let attacked = fighters[Int(random)]
        if let weaponName = fighter.weapon?.name {
            print(fighter.name + "(" + String(fighter.health), "PV) attaque", attacked.name + "(" + String(attacked.health), "PV) avec", weaponName)
        }
        fighter.attack(character: attacked)
        if (attacked.health <= 0){
            fighters.remove(at: Int(random))
        }
    }
    round += 1
}while(fighters.count > 1)

print("Fin ! " +  fighters[0].name + " gagne")
