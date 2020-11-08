//
//  MainMapView+RouteInputViewDelegate.swift
//  iOS-route-filler
//
//  Created by Hugo Flores Perez on 11/8/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import Foundation

extension MainMapView: RouteInputViewDelegate {
    func donePressed(text: String) {
        print("Done pressed")
    }
}
