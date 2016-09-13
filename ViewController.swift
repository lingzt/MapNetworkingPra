//
//  ViewController.swift
//  MapNetworkingPra
//
//  Created by ling toby on 9/13/16.
//  Copyright © 2016 Detroit Labs. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {
    @IBOutlet weak var mapView: MKMapView!

    override func viewDidLoad() {
        super.viewDidLoad()
        let initallocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(initallocation)
    }

    let regionRadius: CLLocationDistance = 1000
    func  centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }


}

