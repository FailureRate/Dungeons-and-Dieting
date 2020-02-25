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
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    
  
    var HealthPtext:UILabel
    @IBOutlet var LastWtext:UILabel!
    var CurWtext:UILabel
    var PlayNamtext:UILabel

    let level:Int
    let Cweight:Int
    let lastwe:Int
    
    init() {
 
        HealthPtext = UILabel()
        LastWtext = UILabel()
        CurWtext = UILabel()
        PlayNamtext = UILabel()
        level = 0
        Cweight = 0
        lastwe = 0
        
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        super.init(nibName:nil, bundle: nil)    
    }
    
    
    required init?(coder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        friendButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        
        view.addSubview(friendButton)
        view.addSubview(itemButton)
        view.addSubview(mapButton)
        view.addSubview(progressButton)
        view.addSubview(shopButton)
        
        friendButton.setImage(UIImage(named: "Button"), for: .normal)
        itemButton.setImage(UIImage(named: "Button"), for: .normal)
        mapButton.setImage(UIImage(named: "Button"), for: .normal)
        progressButton.setImage(UIImage(named: "Button"), for: .normal)
        shopButton.setImage(UIImage(named: "Button"), for: .normal)
        
        friendButton.addTarget(self, action: #selector(toFriend), for: .touchUpInside)
        mapButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
    }
    
    @IBAction func toFriend() {
        let newViewController = FriendViewController()
        newViewController.view.backgroundColor = .blue
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toMap() {
        let newViewController = MapViewController()
        newViewController.view.backgroundColor = .green
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toProgress() {
        let newViewController = ProgressViewController()
        newViewController.view.backgroundColor = .purple
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toShop() {
        let newViewController = ShopViewController()
        newViewController.view.backgroundColor = .orange
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
}



