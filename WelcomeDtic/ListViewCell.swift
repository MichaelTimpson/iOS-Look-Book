//
//  ListViewCell.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael CTR DTIC P on 11/13/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import UIKit

class ListViewCell: UITableViewCell {
    
    @IBOutlet weak var imageTextLabel: UILabel!
    @IBOutlet weak var imageTitleLabel: UILabel!
    @IBOutlet weak var imageCellView: UIImageView!
    
    func setImage(image: Image) {
        imageCellView.image = image.image
        imageTitleLabel.text = image.title
        imageTextLabel.text = image.text
    }
}
