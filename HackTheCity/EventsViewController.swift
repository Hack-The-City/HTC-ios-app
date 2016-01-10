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
    var dateTime = "10Hrs 31Mins"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // load date time from db here
        
        // set the title to the datetime
        self.navigationItem.title = dateTime
        
        var event = eventObject(name: "Food is Ready!", desc: "Menu: Burritos and Chips. Vegan options are also available", time: "12-00 PM")
        eventObjects.append(event)
        
        event = eventObject(name: "Design Workshop", desc: "For upgrading your design skills and to make your hacks look better.", time: "08-00PM")
        eventObjects.append(event)
        
        event = eventObject(name: "AWS showcase", desc: "If you want to know about how to work with the AWS API then you can attend this session. Location: The Bronx", time: "11-00PM")
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
