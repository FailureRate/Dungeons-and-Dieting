//
//  GameViewController6.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class ShopViewController:UIViewController{
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    
    // Shop Items
    var shopItem1: UIButton
    var shopItem2: UIButton
    var shopItem3: UIButton
    var shopItem4: UIButton
    var shopItem5: UIButton
    var shopItem6: UIButton
    var shopItem7: UIButton
    var shopItem8: UIButton
    
    init() {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        
        shopItem1 = UIButton()
        shopItem2 = UIButton()
        shopItem3 = UIButton()
        shopItem4 = UIButton()
        shopItem5 = UIButton()
        shopItem6 = UIButton()
        shopItem7 = UIButton()
        shopItem8 = UIButton()
        super.init(nibName:nil, bundle: nil)

    }

    required init?(coder aDecoder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        
        shopItem1 = UIButton()
        shopItem2 = UIButton()
        shopItem3 = UIButton()
        shopItem4 = UIButton()
        shopItem5 = UIButton()
        shopItem6 = UIButton()
        shopItem7 = UIButton()
        shopItem8 = UIButton()
        super.init(coder: aDecoder)
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
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        mapButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        
        shopItem1 = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY - 200, width: 100, height: 100))
        shopItem2 = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY - 100, width: 100, height: 100))
        shopItem3 = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY, width: 100, height: 100))
        shopItem4 = UIButton(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY + 100, width: 100, height: 100))
        shopItem5 = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY - 200, width: 100, height: 100))
        shopItem6 = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY - 100, width: 100, height: 100))
        shopItem7 = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY, width: 100, height: 100))
        shopItem8 = UIButton(frame: CGRect (x: view.bounds.midX, y: view.bounds.midY + 100, width: 100, height: 100))
        
        view.addSubview(shopItem1)
        view.addSubview(shopItem2)
        view.addSubview(shopItem3)
        view.addSubview(shopItem4)
        view.addSubview(shopItem5)
        view.addSubview(shopItem6)
        view.addSubview(shopItem7)
        view.addSubview(shopItem8)
        
        shopItem1.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem2.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem3.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem4.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem5.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem6.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem7.setImage(UIImage(named: "herosword"), for: .normal)
        shopItem8.setImage(UIImage(named: "herosword"), for: .normal)
    }
    
    @IBAction func toFriend() {
        let newViewController = FriendViewController()
        newViewController.view.backgroundColor = .blue
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toItem() {
        let newViewController = InventoryViewController()
        newViewController.view.backgroundColor = .red
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
}
