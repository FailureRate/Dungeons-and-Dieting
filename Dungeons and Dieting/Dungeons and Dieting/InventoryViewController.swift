//
//  GameViewController3.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit


class InventoryViewController:UIViewController
{
    
    var MenuButton: UIButton
    let LevelNumtext:UILabel
    let HealthPtext:UILabel
    let LastWtext:UILabel
    let CurWtext:UILabel
    let PlayNamtext:UILabel
    let level:Int
    let Cweight:Int
    let lastwe:Int
    init() {
    
        MenuButton =  UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        
        
        LevelNumtext = UILabel()
        HealthPtext = UILabel()
        LastWtext = UILabel()
        CurWtext = UILabel()
        PlayNamtext = UILabel()
        LevelNumtext.text = "Level"
        HealthPtext.text = "Health"
        LastWtext.text = " Last Recorded Weight"
        CurWtext.text = " current Weight goal"
        PlayNamtext.text = "playername "
        level = 0
        Cweight = 0
        lastwe = 0
        
            super.init(nibName:nil, bundle: nil)
    
    }
    
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        
    }
    
    
    
}
