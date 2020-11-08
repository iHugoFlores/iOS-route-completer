//
//  MapProvider.swift
//  iOS-route-filler
//
//  Created by Hugo Flores Perez on 11/8/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import CoreLocation
import UIKit

protocol MapProvider: UIView {
    func drawRoute(coordinates: [CLLocationCoordinate2D])
    func place(marker coordinate: CLLocationCoordinate2D)
    func delete(marker: CLLocationCoordinate2D)
    func deleteAllMarkers()
}
