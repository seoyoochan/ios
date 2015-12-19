//
//  ViewController.swift
//  Map demo
//
//  Created by Seo Yoochan on 6/11/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit
import MapKit


// let view controll map kit's view
class ViewController: UIViewController, MKMapViewDelegate {

    @IBOutlet var map: MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        37.505115, 127.041745
        
        var latitude:CLLocationDegrees = 37.505115
        var longitude:CLLocationDegrees =  127.041745
        var latDelta:CLLocationDegrees = 0.01
        var longDelta:CLLocationDegrees = 0.01
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location,span)
        
        map.setRegion(region, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

