//
//  ShopItem.swift
//  Dungeons and Dieting
//
//  Created by Matthew Ferreira on 2020-03-03.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit

class ShopItem {
    var Info: Item
    var Button: UIButton
    var Label: UILabel
    
    init() {
        Info = Item()
        Button = UIButton()
        Label = UILabel()
    }
    
    func SetUpShopItem(name: String, price: Int, position: Int, view: UIView) -> Void {
        Info.SetUpItem(itemname: name, itemimage: UIImage(named: name)!, itemprice: price)
        
        switch position {
        case 1:
            Button = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY - 200, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX - 100, y: view.bounds.midY - 200, width: 100, height: 100))
            break
        case 2:
            Button = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY - 100, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX - 100, y: view.bounds.midY - 100, width: 100, height: 100))
            break
        case 3:
            Button = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX - 100, y: view.bounds.midY, width: 100, height: 100))
            break
        case 4:
            Button = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY + 100, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX - 100, y: view.bounds.midY + 100, width: 100, height: 100))
            break
        case 5:
            Button = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY - 200, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX + 100, y: view.bounds.midY - 200, width: 100, height: 100))
            break
        case 6:
            Button = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY - 100, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX + 100, y: view.bounds.midY - 100, width: 100, height: 100))
            break
        case 7:
            Button = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX + 100, y: view.bounds.midY, width: 100, height: 100))
            break
        case 8:
            Button = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY + 100, width: 100, height: 100))
            Label = UILabel(frame: CGRect (x: view.bounds.midX + 100, y: view.bounds.midY + 100, width: 100, height: 100))
            break
        default:
            break
            
        }
        
        Button.setImage(Info.Image, for: .normal)
        Label.text = String(Info.Price)
    }
    
    @IBAction func BuyItem() {
        
    }
}
