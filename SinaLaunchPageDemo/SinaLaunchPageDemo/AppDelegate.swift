//
//  AppDelegate.swift
//  SinaLaunchPageDemo
//
//  Created by 也许、 on 2016/12/18.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        // 设置启动页
        self.window!.rootViewController = LaunchVC()
        self.window!.makeKeyAndVisible()
        
        return true
    }

}

