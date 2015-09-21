//
//  ViewController.swift
//  LocationKitSample
//
//  Created by admin on 7/23/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var locationLabel: UILabel!

    @IBAction func getLocation(sender: AnyObject) {
        print("Fetching location...")
        let locationKit = LocationKit.sharedInstance()
        locationKit.getCurrentLocationWithHandler { (location:CLLocation!, error:NSError!) -> Void in
            if let loc = location {
                self.locationLabel.text = "(\(loc.coordinate.latitude), \(loc.coordinate.longitude))"
            } else {
                print("got a nil location")
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

