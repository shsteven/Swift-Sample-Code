//
//  Delay.swift
//  Bonjour
//
//  Created by Steven on 19/7/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import Foundation

func delay(delay:Double, closure:()->()) {
    dispatch_after(
        dispatch_time(
            DISPATCH_TIME_NOW,
            Int64(delay * Double(NSEC_PER_SEC))
        ),
        dispatch_get_main_queue(), closure)
}