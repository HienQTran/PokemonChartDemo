//: [Previous](@previous)

import UIKit
import ChartDemoFramework
import PlaygroundSupport

let pokemons: [Pokemon] = [
    
//    Pokemon.pikachu,
//    Pokemon.alolanRaichu,
    Pokemon.raichu,

//    Pokemon.bulbasaur,
//    Pokemon.ivysaur,
//    Pokemon.megaVenusaur,
//    Pokemon.venusaur,

//    Pokemon.charmander,
    Pokemon.charmeleon,
//    Pokemon.megaCharizardY,
//    Pokemon.megaCharizardX,
//    Pokemon.charizard,

    Pokemon.squirtle
//    Pokemon.wartortle,
//    Pokemon.megaBlastoise,
//    Pokemon.blastoise
]

let viewController = ChartViewController()
viewController.pokemons = pokemons
viewController.view.frame.size = CGSize(width: 375, height: 812)

PlaygroundPage.current.liveView = viewController.view
