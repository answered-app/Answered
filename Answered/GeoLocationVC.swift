//
//  GeoLocationVC.swift
//  Answered
//
//  Created by Jacob Torres on 3/4/16.
//  Copyright © 2016 Jacob Torres. All rights reserved.
//

import UIKit
import MapKit

class GeoLocationVC: UIViewController, UITableViewDelegate, UITableViewDataSource {

    
    @IBOutlet weak var map: MKMapView!
    @IBOutlet weak var tableView: UITableView!
    
    let regionRadius = 100.0
    
    var prayersArray = [Prayer]()
    var isEmpty = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gs = Singleton.sharedInstance
        
        map.layer.cornerRadius = map.layer.frame.width / 2
        
        fillDataSet(gs.prayersInYourArea)
        
        let initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
        centerMapOnLocation(initialLocation)
        
    }
    
    func centerMapOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate,
            regionRadius * 2.0, regionRadius * 2.0)
        map.setRegion(coordinateRegion, animated: true)
    }
    
    func fillDataSet(prayers: [Prayer]){
        
        if prayers.isEmpty {
            
            isEmpty = true
        } else {
            prayersArray = prayers
        }
    }
    
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if (!isEmpty){
            return Int(prayersArray.count)
        } else {
            return 1
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        
        if (!isEmpty){
            return 60
        } else {
            return tableView.bounds.height
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if(!isEmpty){
        
        let cell = tableView.dequeueReusableCellWithIdentifier("PrayerCell", forIndexPath: indexPath) as! PrayerCell
        
        let prayer = prayersArray[indexPath.row] as Prayer
        
        cell.prayerTitle.text = prayer.prayerTitle
        
        return cell
            
        } else {
            
            let cell = tableView.dequeueReusableCellWithIdentifier("NoContentCell", forIndexPath: indexPath) as! NoContentCell
            
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        
        
    }
    
    
}
