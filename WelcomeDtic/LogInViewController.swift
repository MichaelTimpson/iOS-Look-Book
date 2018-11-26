//
//  ViewController.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael CTR DTIC P on 10/31/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import UIKit

class LogInViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func viewProductButtonPressed(_ sender: UIButton) {
        print("LogInViewControllerButtonPressed")
        
        let landingTabController = storyboard?.instantiateViewController(withIdentifier: "LandingTabBarController") as! LandingTabBarController
        
        present(landingTabController, animated: true, completion: nil)
    }

}
