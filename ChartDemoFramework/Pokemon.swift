//
//  Pokemon.swift
//  ChartDemoFramework
//
//  Created by Hien Quang Tran on 13/6/18.
//  Copyright © 2018 hientrq. All rights reserved.
//

import Foundation

public struct Pokemon {
    let name: String
    let type: PokemonType
    let hp: Double
    let attack: Double
    let defense: Double
    let specialAttack: Double
    let specialDefense: Double
    let speed: Double
    
    var stats: [Double] {
        return [hp, attack, defense, specialAttack, specialDefense, speed]
    }
    
    public init(name:String,
                type: PokemonType,
                hp: Double,
                attack: Double,
                defense: Double,
                specialAttack: Double,
                specialDefense: Double,
                speed: Double)
    {
        self.name = name
        self.type = type
        self.hp = hp
        self.attack = attack
        self.defense = defense
        self.specialAttack = specialAttack
        self.specialDefense = specialDefense
        self.speed = speed
    }
    
    public enum PokemonType {
        case water
        case electric
        case fire
        case grass
        
        var color: UIColor {
            switch self {
            case .electric:
                return UIColor(red: 247.0/255.0, green: 207.0/255.0, blue: 67.0/255.0, alpha: 1)
            case .water:
                return UIColor(red: 106.0/255.0, green: 146.0/255.0, blue: 237.0/255.0, alpha: 1)
            case .fire:
                return UIColor(red: 252.0/255.0, green: 91.0/255.0, blue: 93.0/255.0, alpha: 1)
            case .grass:
                return UIColor(red: 47.0/255.0, green: 213.0/255.0, blue: 101.0/255.0, alpha: 1)
            }
        }
    }
}

extension Pokemon {
    
    static public let pikachu = Pokemon(name: "Pikachu", type: .electric, hp: 35, attack: 55, defense: 40, specialAttack: 50, specialDefense: 50, speed: 90)
    static public let alolanRaichu = Pokemon(name: "Alolan Raichu", type: .electric, hp: 60, attack: 85, defense: 50, specialAttack: 95, specialDefense: 85, speed: 110)
    static public let raichu = Pokemon(name: "Raichu", type: .electric, hp: 60, attack: 90, defense: 55, specialAttack: 90, specialDefense: 80, speed: 110)
    
    static public let bulbasaur = Pokemon(name: "Bulbasaur", type: .grass, hp: 45, attack: 49, defense: 49, specialAttack: 65, specialDefense: 65, speed: 45)
    static public let ivysaur = Pokemon(name: "Ivysaur", type: .grass, hp: 60, attack: 62, defense: 63, specialAttack: 80, specialDefense: 80, speed: 60)
    static public let megaVenusaur = Pokemon(name: "Mega Venusaur", type: .grass, hp: 80, attack: 100, defense: 123, specialAttack: 122, specialDefense: 120, speed: 80)
    static public let venusaur = Pokemon(name: "Venusaur", type: .grass, hp: 80, attack: 82, defense: 83, specialAttack: 100, specialDefense: 100, speed: 80)
    
    static public let charmander = Pokemon(name: "Charmander", type: .fire, hp: 55, attack: 52, defense: 50, specialAttack: 60, specialDefense: 50, speed: 65)
    static public let charmeleon = Pokemon(name: "Charmeleon", type: .fire, hp: 58, attack: 64, defense: 58, specialAttack: 80, specialDefense: 65, speed: 80)
    static public let megaCharizardY = Pokemon(name: "Mega Charizard Y", type: .fire, hp: 78, attack: 104, defense: 78, specialAttack: 159, specialDefense: 115, speed: 100)
    static public let megaCharizardX = Pokemon(name: "Mega Charizard X", type: .fire, hp: 78, attack: 130, defense: 111, specialAttack: 130, specialDefense: 85, speed: 100)
    static public let charizard = Pokemon(name: "Charizard", type: .fire, hp: 78, attack: 84, defense: 78, specialAttack: 109, specialDefense: 85, speed: 100)
    
    static public let squirtle = Pokemon(name: "Squirtle", type: .water, hp: 44, attack: 48, defense: 65, specialAttack: 50, specialDefense: 64, speed: 43)
    static public let wartortle = Pokemon(name: "Wartortle", type: .water, hp: 59, attack: 63, defense: 80, specialAttack: 65, specialDefense: 80, speed: 58)
    static public let megaBlastoise = Pokemon(name: "Mega Blastoise", type: .water, hp: 79, attack: 103, defense: 120, specialAttack: 135, specialDefense: 115, speed: 78)
    static public let blastoise = Pokemon(name: "Blastoise", type: .water, hp: 79, attack: 83, defense: 100, specialAttack: 85, specialDefense: 105, speed: 78)
}
