//
//  BudgetViewController.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael D CTR DTIC PM (US) on 11/20/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import UIKit

class BudgetViewController: UIViewController {
    
    var images: [Image] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArrary()
        
        // Do any additional setup after loading the view, typically from a nib.
        print("Budget View Loaded")
    }
    
    func createArrary() -> [Image] {
        var tempImages: [Image] = []
        
        let image1 = Image(image: #imageLiteral(resourceName: "budgeticon_108x108"), title: "DoD Congressional Budget Data", text: "Access DoD Congressional Budget data, based on the authoritative information found on the Library of Congress’ Web site (congress.gov), in PDF and Excel spreadsheet formats.")
        let image2 = Image(image: #imageLiteral(resourceName: "otherbudgeticon_108x108"), title: "DoD Investment Budget Search", text: "A searchable database comprised of the Department of Defense (DoD) Research, Development, Test and Evaluation (RDT&E) and Procurement investment budgets and narrative information from the President’s Budget (PB) submissions or Justification books.")
        
        tempImages.append(image1)
        tempImages.append(image2)
        
        return tempImages
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension BudgetViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "ListViewCell") as! ListViewCell
        
        cell.setImage(image: image)
        return cell
    }
}

