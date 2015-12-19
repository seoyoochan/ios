//
//  ViewController.swift
//  Map Practice
//
//  Created by Seo Yoochan on 6/11/15.
//  Copyright (c) 2015 Seo Yoochan. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {
    

    @IBOutlet var map: MKMapView!
    
    var locationManager = CLLocationManager()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
        
        var latitude:CLLocationDegrees = 37.505115
        var longitude:CLLocationDegrees = 127.041745
        var latDelta:CLLocationDegrees = 0.1
        var longDelta:CLLocationDegrees = 0.1
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        map.setRegion(region, animated: false)
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = location
        
        annotation.title = "선릉역 근처"
        annotation.subtitle = "언젠가 한번 가봐야지.."
        map.addAnnotation(annotation)
        
        var uil = UILongPressGestureRecognizer(target: self, action: "action:")
        uil.minimumPressDuration = 2
        map.addGestureRecognizer(uil)
        
    }
    
    // this location is called whenever new location is registered by phone
    
    func locationManager(manager: CLLocationManager!, didUpdateLocations locations: [AnyObject]!) {

        
        var userLocation: CLLocation = locations[0] as! CLLocation
        var latitude = userLocation.coordinate.latitude
        var longitude = userLocation.coordinate.longitude
        
        var latDelta:CLLocationDegrees = 0.05
        var longDelta:CLLocationDegrees = 0.05
        
        var span:MKCoordinateSpan = MKCoordinateSpanMake(latDelta, longDelta)
        
        var location:CLLocationCoordinate2D = CLLocationCoordinate2DMake(latitude, longitude)
        var region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
        self.map.setRegion(region, animated: false)
        
    }
    
    func action(gestureRecognizer: UIGestureRecognizer){
        println("gesutre recognized")
        
        var touchPoint = gestureRecognizer.locationInView(self.map)
        var newCoordinate:CLLocationCoordinate2D = map.convertPoint(touchPoint, toCoordinateFromView: self.map )
        
        var annotation = MKPointAnnotation()
        annotation.coordinate = newCoordinate
        
        annotation.title = "새로운 장소"
        annotation.subtitle = "언젠가 한번 가봐야지.."
        map.addAnnotation(annotation)
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

