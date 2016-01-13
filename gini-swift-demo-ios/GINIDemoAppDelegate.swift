//
//  AppDelegate.swift
//  gini-swift-demo-ios
//
//  Created by Gini on 05/01/16.
//  Copyright © 2016 Gini. All rights reserved.
//

import UIKit
import Gini_iOS_SDK

@UIApplicationMain
class GINIDemoAppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    // GiniSDK property to have global access to the Gini API
    var giniSDK: GiniSDK?

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        
        // Set up GiniSDK with your credentials
        let builder = GINISDKBuilder.anonymousUserWithClientID("your_gini_client_id", clientSecret: "your_gini_client_secret", userEmailDomain: "example.com")
        self.giniSDK = builder.build();
        
        // Set the GiniVision version so it is viewable in the settings application
        NSUserDefaults.standardUserDefaults().setObject(GINIVISION_VERSION, forKey: "giniVisionVersion")
        
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

