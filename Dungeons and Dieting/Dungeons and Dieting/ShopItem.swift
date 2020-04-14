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
    var Name: String
    var Price: Int
    
    var Button: UIButton
    var Label: UILabel
    
    init() {
        Name = String()
        Price = Int()
        
        Button = UIButton()
        Label = UILabel()
    }
    
    func Info(name: String, price: Int, position: Int, view: UIView) -> Void {
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
        
        Button.setImage(UIImage(named: name), for: .normal)
        Label.text = String(price) + "G"
    }
    
    @IBAction func BuyItem() {
        
    }
}
