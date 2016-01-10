//
//  ScheduleViewController.swift
//  HackTheCity
//
//  Created by Vidyadhar V. Thatte on 1/9/16.
//  Copyright © 2016 Thatte. All rights reserved.
//

import UIKit

class ScheduleViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var events : Array<ScheduleStruct> = []
    var dateTime = "10Hrs 31Mins"

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        self.navigationItem.title = dateTime
        
        self.automaticallyAdjustsScrollViewInsets = true
        
        // initialize the days events here
        var event = ScheduleStruct(name: "Check-In", time: "08:00AM")
        events.append(event)
        
        event = ScheduleStruct(name: "Hacking Begins!", time: "09:00AM")
        events.append(event)
        
        event = ScheduleStruct(name: "Nodejs Workshop", time: "10:00AM")
        events.append(event)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: TableView methods
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return events.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell{
        let cell = tableView.dequeueReusableCellWithIdentifier("schedulecell", forIndexPath: indexPath) as! ScheduleCell
        cell.eventName.text = events[indexPath.row].eventName
        cell.eventTime.text = events[indexPath.row].eventTime
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
