//
//  MapViewController.swift
//  HackTheCity
//
//  Created by Vidyadhar V. Thatte on 1/9/16.
//  Copyright © 2016 Thatte. All rights reserved.
//

import UIKit
import MapKit

class MapViewController: UIViewController {

    var dateTime = "10Hrs 31Mins"
    let initialLocation = CLLocation(latitude: 40.6940741, longitude: -73.9891265)
    let regionRadius: CLLocationDistance = 500
    
    @IBOutlet weak var mapView: MKMapView!
    
    //40.6940741,-73.9891265,17
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        centerMapOnLocation(initialLocation)
        
        // load date time from db here
        
        // set the title to the datetime
        self.navigationItem.title = dateTime
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        mapView.setRegion(coordinateRegion, animated: true)
    }
    

    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
