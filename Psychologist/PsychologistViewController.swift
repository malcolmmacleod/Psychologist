//
//  ViewController.swift
//  Psychologist
//
//  Created by Malcolm Macleod on 23/02/2015.
//  Copyright (c) 2015 Malcolm Macleod. All rights reserved.
//

import UIKit

class PsychologistViewController: UIViewController {


    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var destination = segue.destinationViewController as? UIViewController
        
        if let navCon = destination as? UINavigationController {
            destination = navCon.visibleViewController
        }
        
        if let hvc = destination as? HappinessViewController {
            if let identifier = segue.identifier {
                switch identifier {
                    case "showSad":
                    hvc.happiness = 0
                    case "showHappy":
                    hvc.happiness = 100
                    case "showNothing":
                    hvc.happiness = 25
                default:
                    hvc.happiness = 50
                }
            }
        }
    }

    @IBAction func performNothing(sender: UIButton) {
        performSegueWithIdentifier("showNothing", sender: sender)
    }
}

