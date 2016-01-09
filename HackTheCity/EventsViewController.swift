//
//  EventsViewController.swift
//  HackTheCity
//
//  Created by Vidyadhar V. Thatte on 1/9/16.
//  Copyright © 2016 Thatte. All rights reserved.
//

import UIKit

class EventsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var eventObjects = Array<eventObject>()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        var event = eventObject(name: "Check-in", desc: "Check in at 6 Metrotech with your ID and collect the swag more stuff and text I’m fliing here for no reason haha haha haha haha haha", time: "8AM - 9AM")
        eventObjects.append(event)
        
        event = eventObject(name: "Hacking Begins", desc: "Check in at 6 Metrotech with your ID and collect the swag more stuff and text I’m fliing here for no reason haha haha haha haha haha", time: "9AM - 10AM")
        eventObjects.append(event)
        
        event = eventObject(name: "Nodejs workshop", desc: "Check in at 6 Metrotech with your ID and collect the swag more stuff and text I’m fliing here for no reason haha haha haha haha haha", time: "10AM - 11AM")
        eventObjects.append(event)
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - TableView Data source methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return eventObjects.count
    }
    
    // Row display. Implementers should *always* try to reuse cells by setting each cell's reuseIdentifier and querying for available reusable cells with dequeueReusableCellWithIdentifier:
    // Cell gets various attributes set automatically based on table (separators) and data source (accessory views, editing controls)
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("eventcell", forIndexPath: indexPath) as! EventCell
        cell.eventName.text = eventObjects[indexPath.row].eventName
        cell.eventDesc.text = eventObjects[indexPath.row].eventDesc
        cell.eventTime.text = eventObjects[indexPath.row].dateTime
        return cell
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
