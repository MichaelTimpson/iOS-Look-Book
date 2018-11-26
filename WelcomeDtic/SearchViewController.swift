//
//  SearchViewController.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael CTR DTIC P on 11/9/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {
    
    var images: [Image] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        images = createArrary()

        // Do any additional setup after loading the view, typically from a nib.
        print("SearchViewLoaded")
    }
    
    func createArrary() -> [Image] {
        var tempImages: [Image] = []
        
        let image1 = Image(image: #imageLiteral(resourceName: "searchicon_108x108"), title: "DoD S&E Reports", text: "Discover pubicly available DoD research projects, documents, budget narratives and other data.")
        let image2 = Image(image: #imageLiteral(resourceName: "pubdefenseicon_108x108"), title: "Pub Defense", text: "Access to DOD‐ and ODNI/IARPA‐funded scholarly publications")
        let image3 = Image(image: #imageLiteral(resourceName: "grantsicon_108x108"), title: "DoD Grant Awards", text: "A unified, searchable collection of detailed abstracts referencings research and non-research projects for over 8,000 DoD grant awards.")
        let image4 = Image(image: #imageLiteral(resourceName: "iacicon_108x108"), title: "DoD Information Analysis Centers", text: "Research and analysis organizations chartered to help researchers, engineers, scientists and program managers utilize existing Scientific and Technical Information.")
        let image5 = Image(image: #imageLiteral(resourceName: "cp_audience"), title: "NDIA Conference Proceedings", text: "National Defense Industrial Association Access to DoD related NDIA conference proceedings.")
        
        tempImages.append(image1)
        tempImages.append(image2)
        tempImages.append(image3)
        tempImages.append(image4)
        tempImages.append(image5)
        
        return tempImages
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension SearchViewController: UITableViewDataSource, UITableViewDelegate {
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
















