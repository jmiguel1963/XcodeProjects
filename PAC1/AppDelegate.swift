//
//  AppDelegate.swift
//  PAC1
//
//  Created by Joseph on 10/10/2022.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        /*let manager = ManagerPlaces.shared()
        let pl = Place(name: "Test Place", description: "More Info", image_in: nil)
        let pl2 = PlaceTourist(name:"Test Place222", description: "Cool City", discount_tourist:"220",image_in: nil)
        manager.append(_value:pl2)
        
        print("Element 0: ",manager.places[0].name)
        print("Element 1: ",manager.places[1].name)*/
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

