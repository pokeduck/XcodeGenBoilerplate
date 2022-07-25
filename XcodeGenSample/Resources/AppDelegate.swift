//
//  AppDelegate.swift
//  xcgendemo
//
//  Created by 伯爵奶茶全糖去冰 on 2021/1/22.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?

    func application(_: UIApplication, didFinishLaunchingWithOptions _: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        window = UIWindow(frame: UIScreen.main.bounds)
        let rootVC = ViewController()
        rootVC.view.backgroundColor = .white
        window?.rootViewController = rootVC
        window?.makeKeyAndVisible()
        return true
    }

//    @available(iOS 13.0, *)
//    func application(_: UIApplication, didDiscardSceneSessions _: Set<UISceneSession>) {}
//
//    @available(iOS 13.0, *)
//    func application(_: UIApplication, configurationForConnecting _: UISceneSession, options _: UIScene.ConnectionOptions) -> UISceneConfiguration {
//        return .init()
//    }
}
