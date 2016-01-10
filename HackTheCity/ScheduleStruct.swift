//
//  ScheduleStruct.swift
//  HackTheCity
//
//  Created by Vidyadhar V. Thatte on 1/9/16.
//  Copyright © 2016 Thatte. All rights reserved.
//

import Foundation

struct ScheduleStruct {
    init( name: String?, time: String ){
        self.eventName = name
        self.eventTime = time
    }
    
    var eventName : String?
    var eventTime : String?
}