//
//  AppDelegate.swift
//  NudgeSwift
//
//  Created by slzhou on 2023/6/24.
//

import UIKit
import nudgeBase

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {

        window = UIWindow.init(frame: UIScreen.main.bounds);
        window?.backgroundColor = UIColor.white;
        let mainNaviController = UIStoryboard(name: "Main", bundle: Bundle.main).instantiateViewController(withIdentifier: "mainNavi")
        window!.rootViewController = mainNaviController
        window!.makeKeyAndVisible()

        UNUserNotificationCenter.current().delegate = self
        try? NudgeBase.registerForPushNotifications()
        application.registerForRemoteNotifications()
        
        return true
    }
    
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        NudgeBase.onRegisteredForNotifications(deviceToken: deviceToken)
    }

    func application(_ application: UIApplication, didFailToRegisterForRemoteNotificationsWithError error: Error) {
        NudgeBase.onFailedToRegisterForNotifications(error:error)
    }
    
    func application(
    _ application: UIApplication,
    didReceiveRemoteNotification userInfo: [AnyHashable: Any],
    fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) ->Void) {
        NudgeBase.receivedPush(notificationPayload:userInfo, application: application)
    }

}

extension AppDelegate: UNUserNotificationCenterDelegate {
    // Receive displayed notifications for iOS 10 devices.
    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                willPresent notification: UNNotification,
                                withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        if#available(iOS 14.0, *) {
            completionHandler([[.banner, .sound, .badge]])
        } else {
            // Fallback on earlier versions
            completionHandler([[.alert, .sound, .badge]]) }
    }

    func userNotificationCenter(_ center: UNUserNotificationCenter,
                                didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        NudgeBase.tappedNotification(notification: response.notification)
        completionHandler()
    }
}
