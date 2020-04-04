//
//  Item.swift
//  Dungeons and Dieting
//
//  Created by user163969 on 4/3/20.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class Item {
    var Name: String
    var Image: UIImage
    var Price: Int
    
    init() {
        Name = String()
        Image = UIImage()
        Price = Int()
    }
    
    func SetUpItem(itemname: String, itemimage: UIImage, itemprice: Int) {
        Name = itemname
        Image = itemimage
        Price = itemprice
    }
}
