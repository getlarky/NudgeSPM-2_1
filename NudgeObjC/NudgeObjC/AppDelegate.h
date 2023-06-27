//
//  AppDelegate.h
//  NudgeObjC
//
//  Created by slzhou on 2023/6/24.
//

#import <UIKit/UIKit.h>
#import <UserNotifications/UserNotifications.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate, UNUserNotificationCenterDelegate>

@property (strong, nonatomic) UIWindow * window;

@end

