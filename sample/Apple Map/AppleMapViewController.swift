//
//  AppleMapViewController.swift
//  sample
//
//  Created by PREM KUMAR on 7/21/20.
//  Copyright © 2020 naresh.ko. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
class AppleMapViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
let locationManager = CLLocationManager()
    @IBOutlet weak var mapV: MKMapView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.locationManager.requestAlwaysAuthorization()
        
        // For use in foreground
        self.locationManager.requestWhenInUseAuthorization()
        
        if CLLocationManager.locationServicesEnabled() {
            locationManager.delegate = self
            locationManager.desiredAccuracy = kCLLocationAccuracyBest
            locationManager.startUpdatingLocation()
        }
        
        self.mapV.delegate = self
        self.mapV.mapType = .standard
        self.mapV.isZoomEnabled = true
        self.mapV.isScrollEnabled = true
        
        if let coor = self.mapV.userLocation.location?.coordinate{
            self.mapV.setCenter(coor, animated: true)
        }
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let locValue:CLLocationCoordinate2D = manager.location!.coordinate
        
        self.mapV.mapType = MKMapType.standard
        
        let span = MKCoordinateSpan(latitudeDelta: 0.05, longitudeDelta: 0.05)
        let region = MKCoordinateRegion(center: locValue, span: span)
        self.mapV.setRegion(region, animated: true)
        
        let annotation = MKPointAnnotation()
        annotation.coordinate = locValue
        annotation.title = "Javed Multani"
        annotation.subtitle = "current location"
        self.mapV.addAnnotation(annotation)
        
        //centerMap(locValue)
    }

}
