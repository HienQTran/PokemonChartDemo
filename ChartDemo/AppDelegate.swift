//
//  AppDelegate.swift
//  ChartDemo
//
//  Created by Hien Quang Tran on 9/6/18.
//  Copyright © 2018 hientrq. All rights reserved.
//

import UIKit
import ChartDemoFramework

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        let chartViewController = ChartViewController()
        chartViewController.pokemons = [
            Pokemon.charmander,
            Pokemon.squirtle,
            Pokemon.pikachu
        ]
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = chartViewController
        window?.makeKeyAndVisible()
        
        return true
    }
}

