//
//  SceneDelegate.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let scene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: scene)
        
        let mainVC = PackingViewController()
        let navC = UINavigationController(rootViewController: mainVC)
        
        window.rootViewController = navC        
        self.window = window
        window.makeKeyAndVisible()
    }
    
}
