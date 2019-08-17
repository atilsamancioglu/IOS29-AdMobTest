//
//  ViewController.swift
//  GoogleAdMobTest
//
//  Created by Atil Samancioglu on 17.08.2019.
//  Copyright © 2019 Atil Samancioglu. All rights reserved.
//

import UIKit
import GoogleMobileAds

class ViewController: UIViewController {
    
    var interstitial: GADInterstitial!


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        interstitial = GADInterstitial(adUnitID: "ca-app-pub-3940256099942544/4411468910")
        let request = GADRequest()
        interstitial.load(request)
        
    }

    @IBAction func nextClicked(_ sender: Any) {
      
        if interstitial.isReady {
          interstitial.present(fromRootViewController: self)
        }
        
    }
    
}

