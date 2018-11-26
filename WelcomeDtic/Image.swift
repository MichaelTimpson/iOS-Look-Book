//
//  Image.swift
//  WelcomeDtic
//
//  Created by Timpson, Michael CTR DTIC P on 11/13/18.
//  Copyright © 2018 Timpson, Michael CTR DTIC P. All rights reserved.
//

import Foundation
import UIKit

class Image {
    var image: UIImage
    var title: String
    var text: String
    
    init(image: UIImage, title: String, text: String) {
        self.image = image
        self.title = title
        self.text = text
    }
}
