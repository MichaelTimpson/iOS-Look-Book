//
//  ResearchViewController.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael D CTR DTIC PM (US) on 11/20/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import UIKit

class ResourceViewController: UIViewController {
    
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
        
        let image1 = Image(image: #imageLiteral(resourceName: "defensemark_108x108"), title: "Defense Innovation Marketplace", text: "Connect industry and the DoD by providing a centralized resource for independent research and development activities.")
        let image2 = Image(image: #imageLiteral(resourceName: "co_source_search"), title: "Corporate Source Authority System Search", text: "Directory of organizations that havecontributed information to any of DTIC's three major databases.")
        let image3 = Image(image: #imageLiteral(resourceName: "thesaurusicon_108x108"), title: "DTIC Thesaurus", text: "Multi‐disciplinary subject terms organized and linked to broader terms for ease of information search and retrieval.")
        let image4 = Image(image: #imageLiteral(resourceName: "submiticon_108x108"), title: "Submit to DTIC", text: "Information needed to submit or learn how to submit documents to DTIC")
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        tempImages.append(image4)
        
        return tempImages
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ResourceViewController: UITableViewDataSource, UITableViewDelegate {
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

