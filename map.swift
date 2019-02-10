//first open mainstoryboard and import mapkit view from component and put constrain on it and made it fill all storyboard
//second write the code
//  ViewController.swift
//  map
//
//  Created by mohamed on 2/10/19.
//  Copyright © 2019 mohamed. All rights reserved.
//

import UIKit
import MapKit
class ViewController: UIViewController {
    @IBOutlet weak var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let span:MKCoordinateSpan = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1)
        // search about your city that you want and copy latitude  and longitude ex) i select cairo 
        let location:CLLocationCoordinate2D=CLLocationCoordinate2D(latitude: 30.048171, longitude:    31.232708)
        let region:MKCoordinateRegion=MKCoordinateRegion(center: location, span: span)
        map.setRegion(region, animated: true)
        let annotation=MKPointAnnotation()
        annotation.coordinate=location
        annotation.title="my shop"
        annotation.subtitle="come visit me here"
        map.addAnnotation(annotation)
    
        
    }


}
