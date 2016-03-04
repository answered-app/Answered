//
//  Prayer.swift
//  Answered
//
//  Created by Jacob Torres on 3/4/16.
//  Copyright © 2016 Jacob Torres. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class Prayer: NSObject, MKAnnotation{
    
    //--------------------------
    // MARK: - Private Variables
    //--------------------------
    private var _prayerTitle: String! // required
    private var _prayerIntendedFor: String!
    private var _prayerImage: UIImage? // optional
    private var _prayerDetails: String!
    private var _coordinate: CLLocationCoordinate2D!
    private var _numOfPeople: Int?
    private var _answered: Bool!
    
    //-------------------------
    // MARK: - Public Variables
    //-------------------------
    var prayerTitle: String {
        return _prayerTitle
    }
    
    var prayerIntendedFor: String {
        return _prayerIntendedFor
    }
    
    var prayerImage: UIImage? {
        return _prayerImage
    }
    
    var prayerDetails: String {
        return _prayerDetails
    }
    
    var coordinate: CLLocationCoordinate2D {
        return _coordinate
    }
    
    var numOfPeople: Int? {
        return _numOfPeople
    }
    
    var answered: Bool {
        return _answered
    }
    
    //----------------------------------
    // MARK: - Drug Instance Initializer
    //----------------------------------
    init(prayerTitle: String, prayerIntendedFor: String, prayerImage: UIImage?, prayerDetails: String, coordinate: CLLocationCoordinate2D, numOfPeople: Int) {
        
        self._prayerTitle = prayerTitle
        self._prayerIntendedFor = prayerIntendedFor
        self._prayerImage = prayerImage
        self._prayerDetails = prayerDetails
        self._coordinate = coordinate
        self._numOfPeople = numOfPeople
        self._answered = false
    }
}


