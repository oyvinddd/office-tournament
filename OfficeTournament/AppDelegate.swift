//
//  AppDelegate.swift
//  OfficeTournament
//
//  Created by Øyvind Hauge on 14/01/2024.
//

import UIKit

class AppDelegate: NSObject, UIApplicationDelegate {
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        globalConfiguration()
        return true
    }
    
    private func globalConfiguration() {
        //UIScrollView.appearance().bounces = false
    }
}
