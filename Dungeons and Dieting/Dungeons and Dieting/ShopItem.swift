//
//  ShopItem.swift
//  Dungeons and Dieting
//
//  Created by Matthew Ferreira on 2020-03-03.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation

class ShopItem {
    var Name: String
    var Price: Int
    
    init() {
        Name = " "
        Price = 0
    }
    
    func ShopItem(name: String, price: Int) {
        Name = name
        Price = price
    }
}
