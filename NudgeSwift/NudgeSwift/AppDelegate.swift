//
//  AppDelegate.swift
//  NudgeSwift
//
//  Created by slzhou on 2023/6/24.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow.init(frame: UIScreen.main.bounds);
        window?.backgroundColor = UIColor.white;
        let mainNaviController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "mainNavi")
        window!.rootViewController = mainNaviController
        window!.makeKeyAndVisible()

        return true
    }


}

