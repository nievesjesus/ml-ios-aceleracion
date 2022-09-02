//
//  SceneDelegate.swift
//  Trivia
//
//  Created by Jesus Nieves on 01/09/2022.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        // Declaro mi manejador de scene
        guard let windowsScene = (scene as? UIWindowScene) else { return }
        
        // Instancio mi ventana
        window = UIWindow(windowScene: windowsScene)

        // Instancio mi viewcontroller
        let mainViewController = ViewController()
        
        // Establezco el viewcontroller como el ROOTVIEWCONTROLLER
        window?.rootViewController = mainViewController
        
        // Hago la ventana visible
        window?.makeKeyAndVisible()
    }

}

