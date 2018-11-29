//
//  ExpandedViewController.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael D CTR DTIC PM (US) on 11/28/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import Foundation
import UIKit

class ExpandedViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        titleLabel.text = titles[myIndex]
        descLabel.text = descriptions[myIndex]
        
        // Do any additional setup after loading the view, typically from a nib.
        print("expaned view loaded")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
