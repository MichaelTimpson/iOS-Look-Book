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
    @IBAction func facebookButtonPressed(_ sender: UIButton) {
        print("Facebook")
        let facebookUrl = NSURL(string:"https://www.facebook.com/dtic.mil")! as URL
        UIApplication.shared.open(facebookUrl, options: [:], completionHandler: nil)
    }
    @IBAction func twitterButtonPressed(_ sender: UIButton) {
        let twitterUrl = NSURL(string:"https://www.twitter.com/doddtic?lang=en")! as URL
        UIApplication.shared.open(twitterUrl, options: [:], completionHandler: nil)
    }
    @IBAction func linkedinButtonPressed(_ sender: UIButton) {
        let linkedinUrl = NSURL(string:"https://www.linkedin.com/company/defense-technical-information-center")! as URL
        UIApplication.shared.open(linkedinUrl, options: [:], completionHandler: nil)
    }
    
    @IBAction func mailButtonPressed(_ sender: UIButton) {
        print("Mail Button")
    }
    
    
    @IBAction func viewProductButtonPressed(_ sender: UIButton) {
        print("LogInViewControllerButtonPressed")
        
        let landingTabController = storyboard?.instantiateViewController(withIdentifier: "LandingTabBarController") as! LandingTabBarController
        
        present(landingTabController, animated: true, completion: nil)
    }

}
