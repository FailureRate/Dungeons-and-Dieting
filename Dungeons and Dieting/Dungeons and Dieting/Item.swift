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

enum ItemType {
    case none, key, consumable, equipment
}

class Item {
    var Name: String
    var Image: UIImage
    var IType: ItemType
    var Stats: Array<Int>
    var Price: Int
    
    init() {
        Name = String()
        Image = UIImage()
        IType = ItemType.none
        Stats = Array<Int>()
        Price = Int()
    }
    
    func SetUpItem(itemname: String, itemimage: UIImage, itemprice: Int) {
        Name = itemname
        Image = itemimage
        Price = itemprice
    }
}
