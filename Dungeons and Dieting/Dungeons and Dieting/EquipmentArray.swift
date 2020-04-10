//
//  EquipmentArray.swift
//  Dungeons and Dieting
//
//  Created by user163969 on 4/10/20.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit

final class EquipmentArray {
    static let shared = EquipmentArray()
    
    private var ItemList: Array<Item>
    
    private var Armor: Item
    private var Axe: Item
    private var Boots: Item
    private var Bow: Item
    private var Hammer: Item
    private var Helmet: Item
    private var Katana: Item
    private var Sheild: Item
    private var Staff: Item
    private var Sword: Item
    
    
    private init {
        Armor = Item()
        Armor.SetUpItem(name: "Armor", image: UIImage(named: "Armor_1")!, type: ItemType.equipment, price: 500)
        
        Axe = Item()
        Axe.SetUpItem(name: "Axe", image: UIImage(named: "baseaxe")!, type: ItemType.equipment, price: 500)
        
        Boots = Item()
        Boots.SetUpItem(name: "Boots", image: UIImage(named: "Shoe_1")!, type: ItemType.equipment, price: 500)
        
        Bow = Item()
        Bow.SetUpItem(name: "Bow", image: UIImage(named: "Blackbow")!, type: ItemType.equipment, price: 500)
        
        Hammer = Item()
        Hammer.SetUpItem(name: "Hammer", image: UIImage(named: "basehammer")!, type: ItemType.equipment, price: 500)
        
        Helmet = Item()
        Helmet.SetUpItem(name: "Helmet", image: UIImage(named: "helmet_1")!, type: ItemType.equipment, price: 500)
        
        Katana = Item()
        Katana.SetUpItem(name: "Katana", image: UIImage(named: "katana")!, type: ItemType.equipment, price: 500)
        
        Sheild = Item()
        Sheild.SetUpItem(name: "Armor", image: UIImage(named: "Armor_1")!, type: ItemType.equipment, price: 500)
        
        Staff = Item()
        Staff.SetUpItem(name: "Armor", image: UIImage(named: "Armor_1")!, type: ItemType.equipment, price: 500)
        
        Armor = Item()
        Armor.SetUpItem(name: "Armor", image: UIImage(named: "Armor_1")!, type: ItemType.equipment, price: 500)
        
        
        
        ItemList = [Armor]
    }
}
