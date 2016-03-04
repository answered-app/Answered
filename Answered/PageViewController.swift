//
//  ViewController.swift
//  Answered
//
//  Created by Jacob Torres on 3/4/16.
//  Copyright © 2016 Jacob Torres. All rights reserved.
//

import UIKit

class PageViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        let storyboard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
        
        let geoVC = storyboard.instantiateViewControllerWithIdentifier("GeoLocation") as! GeoLocationVC
        
        let prayingForVC = storyboard.instantiateViewControllerWithIdentifier("PrayingFor") as!
            PrayingForVC
        
        let myRequestsVC = storyboard.instantiateViewControllerWithIdentifier("MyRequests") as!
            MyRequestsVC
        
        geoVC.view.frame = scrollView.frame
        myRequestsVC.view.frame = scrollView.frame
        prayingForVC.view.frame = scrollView.frame
        
        self.addChildViewController(geoVC)
        self.scrollView.addSubview(geoVC.view)
        geoVC.didMoveToParentViewController(self)
        
        self.addChildViewController(prayingForVC)
        self.scrollView.addSubview(prayingForVC.view)
        prayingForVC.didMoveToParentViewController(self)
        
        self.addChildViewController(myRequestsVC)
        self.scrollView.addSubview(myRequestsVC.view)
        myRequestsVC.didMoveToParentViewController(self)
        
        var V2Frame : CGRect = prayingForVC.view.frame
        V2Frame.origin.x = self.view.frame.width
        prayingForVC.view.frame = V2Frame
        
        var V3Frame : CGRect = myRequestsVC.view.frame
        V3Frame.origin.x = self.view.frame.width * 2
        myRequestsVC.view.frame = V3Frame
        
        self.scrollView.contentSize = CGSizeMake(self.view.frame.width * 3, self.view.frame.height)
        
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}
