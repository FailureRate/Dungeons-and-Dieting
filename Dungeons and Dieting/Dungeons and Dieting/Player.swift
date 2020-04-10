//
//  Player.swift
//  Dungeons and Dieting
//
//  Created by user163969 on 4/9/20.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation

final class Player {
    static let shared = Player()
    
    private var Money: Int
    private var Inventory: Array<Item>
    
    private init() {
        Money = Int()
        Inventory = Array<Item>()
    }
    
    func GetMoney() -> Int {
        return Money
    }
    
    func AddMoney(amount: Int) {
        Money += amount
    }
    
    func SubtractMoney(amount: Int) {
        Money -= amount
    }
    
    func AddToInventory(item: Item) {
        Inventory.insert(item, at: Inventory.count)
    }
}
