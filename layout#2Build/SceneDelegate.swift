//
//  SceneDelegate.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
       
        guard let winScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: winScene)
        window?.rootViewController = ViewController()
        window?.makeKeyAndVisible()
    }

  
}

