//
//  SceneDelegate.swift
//  iOS-route-filler
//
//  Created by Hugo Flores Perez on 11/8/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import MapKit
import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    let mapProvider = MKMapView()

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = (scene as? UIWindowScene) else { return }
        let window = UIWindow(windowScene: windowScene)
        window.rootViewController = MainMapView(mapView: mapProvider)
        self.window = window
        window.makeKeyAndVisible()
    }
}
