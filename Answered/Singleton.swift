//
//  Singleton.swift
//  Answered
//
//  Created by Jacob Torres on 3/4/16.
//  Copyright © 2016 Jacob Torres. All rights reserved.
//

import Foundation

class Singleton {
    
    static let sharedInstance = Singleton()
    
    var radius: Double
    
    var prayersInYourArea:[Prayer] = []
    var myPrayers:[Prayer] = []
    var prayingFor:[Prayer] = []
    
    private init(){
        
        // Sample prayers for testing
        
        //prayersInYourArea.append(Prayer(prayerTitle: <#T##String#>, prayerIntendedFor: <#T##String#>, prayerImage: <#T##UIImage?#>, prayerDetails: <#T##String#>, coordinate: <#T##CLLocationCoordinate2D#>))
        
        //myPrayers.append(Prayer(prayerTitle: <#T##String#>, prayerIntendedFor: <#T##String#>, prayerImage: <#T##UIImage?#>, prayerDetails: <#T##String#>, coordinate: <#T##CLLocationCoordinate2D#>, numOfPeople: <#T##Int#>))
        
        //prayingFor.append(Prayer(prayerTitle: <#T##String#>, prayerIntendedFor: <#T##String#>, prayerImage: <#T##UIImage?#>, prayerDetails: <#T##String#>, coordinate: <#T##CLLocationCoordinate2D#>, numOfPeople: <#T##Int#>))
        
        radius = 0.0
    }
}

