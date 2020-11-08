//
//  ViewController.swift
//  iOS-route-filler
//
//  Created by Hugo Flores Perez on 11/8/20.
//  Copyright © 2020 Hugo Flores Perez. All rights reserved.
//

import SnapKit
import UIKit

class MainMapView: UIViewController {
    
    private let mapView: MapProvider!
    
    private lazy var encodedRouteInput: RouteInputView = {
        let view = RouteInputView(viewDelegate: self)
        return view
    }()
    
    init(mapView: MapProvider) {
        self.mapView = mapView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setUpLayout()
    }
    
    private func setUpLayout() {
        view.addSubview(mapView)
        mapView.snp.makeConstraints { $0.edges.equalToSuperview() }
        
        view.addSubview(encodedRouteInput)
        encodedRouteInput.snp.makeConstraints {
            $0.top.left.right.equalToSuperview().inset(40)
        }
    }
}
