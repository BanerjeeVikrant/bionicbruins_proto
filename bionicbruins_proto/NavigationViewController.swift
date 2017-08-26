//
//  NavigationViewController.swift
//  bionicbruins_proto
//
//  Created by user128030 on 7/7/17.
//  Copyright © 2017 user128030. All rights reserved.
//

import UIKit

class NavigationViewController: UIViewController {

    @IBOutlet weak var homeView: UIView!
    @IBOutlet weak var trackingView: UIView!
    @IBOutlet weak var economyView: UIView!
    @IBOutlet weak var requestView: UIView!
    
    var homeTapGesture = UITapGestureRecognizer()
    var trackingTapGesture = UITapGestureRecognizer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // On HomeView Tapped
        homeTapGesture = UITapGestureRecognizer(target: self, action: #selector(NavigationViewController.homeViewTapped(_:)))
        homeTapGesture.numberOfTapsRequired = 1
        homeTapGesture.numberOfTouchesRequired = 1
        homeView.addGestureRecognizer(homeTapGesture)
        homeView.isUserInteractionEnabled = true
        
        // On TrackingView Tapped
        trackingTapGesture = UITapGestureRecognizer(target: self, action: #selector (NavigationViewController.trackingViewTapped(_:)))
        trackingTapGesture.numberOfTapsRequired = 1
        trackingTapGesture.numberOfTouchesRequired = 1
        trackingView.addGestureRecognizer(trackingTapGesture)
        trackingView.isUserInteractionEnabled = true
    }
    func homeViewTapped(_ sender: UITapGestureRecognizer) {
        let homeVC = self.storyboard?.instantiateViewController(withIdentifier: "homeView") as! SWRevealViewController
        self.present(homeVC, animated: true, completion: nil)
    }
    func trackingViewTapped(_ sender: UITapGestureRecognizer) {
        let trackingVC = self.storyboard?.instantiateViewController(withIdentifier: "trackingItems") as! SWRevealViewController
        self.present(trackingVC, animated: true, completion: nil)
    }
    
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
