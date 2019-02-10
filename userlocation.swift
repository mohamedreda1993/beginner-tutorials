//fist open storyboard and import mapkit view from component and fill it with all storyboard
//second open Build phases  from target and select link Binary from library and Add Core location.framework
// third go to info,plist and click main storyboard file base name and add privacy location when in use and write the thing you want to show like hey i want to know where you are
// forth write the code 
//  ViewController.swift
//  user location
//
//  Created by mohamed on 2/10/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController,CLLocationManagerDelegate {
    // Map
    @IBOutlet weak var map: MKMapView!
    let manager=CLLocationManager()
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location =  locations[0]
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.01, longitudeDelta: 0.01)
        let mylocation:CLLocationCoordinate2D=CLLocationCoordinate2D(latitude: location.coordinate.latitude, longitude: location.coordinate.longitude)
        let region:MKCoordinateRegion=MKCoordinateRegion(center: mylocation, span: span)
        map.setRegion(region, animated: true)
       print( location.altitude)
        print(location.speed)
        self.map.showsUserLocation = true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        manager.delegate=self
        manager.desiredAccuracy=kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
        
    }


}

