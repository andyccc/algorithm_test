//
//  AppDelegate.swift
//  algorithm
//
//  Created by andyccc on 2021/8/6.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
//         https://blog.csdn.net/feiyanaffection/category_7410514.html
//        https://blog.csdn.net/feiyanaffection/article/details/83093306
//        https://juejin.cn/post/6844904167824162823
        // https://www.jianshu.com/p/8e199197b18f
        // https://www.jianshu.com/p/7d4bb8fc96c6
        //        MaoPao.run()
        //        Xuanze.run()
        //        Charu.run()
        //        Xier.run()
        //        Guibin.run()
        //        Kuaipai.run()
        //        Jishu.run()
        Jishu2.run()
        Kmp.run()
        var s = "abcdefg"
        var cs = s.index(s.startIndex, offsetBy: 4)
        var ns = s[cs]
        print("ns = \(ns)")
        ReverList.run()
        
        
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

