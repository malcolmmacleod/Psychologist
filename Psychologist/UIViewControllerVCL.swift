//
//  UIViewControllerVCL.swift
//  Psychologist
//
//  Created by Malcolm Macleod on 19/07/2015.
//  Copyright (c) 2015 Malcolm Macleod. All rights reserved.
//


import UIKit

var accumulatingLogVCLprefix = ""
var lastLogVCLPrefixRequest: NSDate?

extension UIViewController {
    var logVCLprefix: String {
        if let lastRequestDate = lastLogVCLPrefixRequest {
            if lastRequestDate.timeIntervalSinceNow < -2 {
                accumulatingLogVCLprefix += "__"
            }
        }
        lastLogVCLPrefixRequest = NSDate(timeIntervalSinceNow: 0)
        return accumulatingLogVCLprefix
    }
}

