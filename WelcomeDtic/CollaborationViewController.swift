//
//  CollaborationViewController.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael D CTR DTIC PM (US) on 11/20/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import UIKit

class CollaborationViewController: UIViewController {
    
    var images: [Image] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArrary()
        
        // Do any additional setup after loading the view, typically from a nib.
        print("Research View Loaded")
    }
    
    func createArrary() -> [Image] {
        var tempImages: [Image] = []
        
        let image1 = Image(image: #imageLiteral(resourceName: "techipediaicon_108x108"), title: "DoD Investment Budget Search", text: "A searchable database comprised of the Department of Defense (DoD) Research, Development, Test and Evaluation (RDT&E) and Procurement investment budgets and narrative information from the President’s Budget (PB) submissions or Justification books.")
        let image2 = Image(image: #imageLiteral(resourceName: "techspaceicon_108x108"), title: "DoDTechSpace", text: "A virtual collaboration environment and planning tool to coordinate, discuss, consolidate and track project data.")
        let image3 = Image(image: #imageLiteral(resourceName: "journalicon_108x108"), title: "Journal of DoD Research Engineering", text: "Peer‐reviewed journal for controlledunclassified and classified papers by DoD researchers, scientists and engineers.")
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        
        return tempImages
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension CollaborationViewController: UITableViewDataSource, UITableViewDelegate {
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

