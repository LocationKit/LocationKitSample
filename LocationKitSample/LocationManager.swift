//
//  LocationManager.swift
//  LocationKitSample
//
//  Created by admin on 7/23/15.
//  Copyright (c) 2015 admin. All rights reserved.
//

import Foundation

class LocationManager: NSObject, LocationKitDelegate {
    
    func locationKit(locationKit: LocationKit!, didUpdateLocation location: CLLocation!) {
        println("Delegate got a location: (\(location.coordinate.latitude), \(location.coordinate.longitude))")
    }
}
