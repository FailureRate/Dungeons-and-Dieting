//
//  ShopItem.swift
//  Dungeons and Dieting
//
//  Created by Matthew Ferreira on 2020-02-25.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class ShopItem {
    var name: String = ""
    var image: UIImage = UIImage(named: "Button") ?? <#default value#>
    var price: Int = 0
    
    func ShopItem(Name: String, Image: UIImage, Price: Int) {
        name = Name
        image = Image
        price = Price
    }
}
