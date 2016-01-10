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
    let initialLocation = CLLocation(latitude: 40.694201, longitude: -73.986477705)
    //let regionRadius: CLLocationDistance = 100
    let outdoorRadius : CLLocationDistance = 100
    let indoorRadius : CLLocationDistance = 0
    
    //40.694202,-73.986477718
    
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var segment: UISegmentedControl!
    @IBOutlet weak var line1: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        centerMapOnLocation(initialLocation, radius: outdoorRadius)
        
        // load date time from db here
        
        // set the title to the datetime
        self.navigationItem.title = dateTime
        
        line1.hidden = true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentControl(sender: UISegmentedControl) {
        switch segment.selectedSegmentIndex
        {
            case 0:
                centerMapOnLocation(initialLocation, radius: outdoorRadius)
                line1.hidden = true
            case 1:
                centerMapOnLocation(initialLocation, radius: indoorRadius)
                line1.hidden = false
            default:
                break;
        }
    }
    
    func centerMapOnLocation(location: CLLocation, radius : CLLocationDistance) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            radius * 2.0, radius * 2.0)
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
