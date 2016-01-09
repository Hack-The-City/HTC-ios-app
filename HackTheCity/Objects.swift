//
//  Objects.swift
//  HackTheCity
//
//  Created by Vidyadhar V. Thatte on 1/9/16.
//  Copyright © 2016 Thatte. All rights reserved.
//

import Foundation

struct eventObject {
    
    init(name : String, desc: String, time: String){
        self.eventName = name
        self.eventDesc = desc
        self.dateTime = time
    }
    
    var eventName : String?
    var eventDesc : String?
    var dateTime : String?
}