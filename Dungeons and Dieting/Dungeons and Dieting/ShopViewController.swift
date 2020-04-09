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
    
    // Player Money
    var money: UILabel
    
    // Shop Items
    var shopItem1: ShopItem
    var shopItem2: ShopItem
    var shopItem3: ShopItem
    var shopItem4: ShopItem
    var shopItem5: ShopItem
    var shopItem6: ShopItem
    var shopItem7: ShopItem
    var shopItem8: ShopItem
    
    init() {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        
        money = UILabel()
        
        shopItem1 = ShopItem()
        shopItem2 = ShopItem()
        shopItem3 = ShopItem()
        shopItem4 = ShopItem()
        shopItem5 = ShopItem()
        shopItem6 = ShopItem()
        shopItem7 = ShopItem()
        shopItem8 = ShopItem()
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        
        money = UILabel()
        
        shopItem1 = ShopItem()
        shopItem2 = ShopItem()
        shopItem3 = ShopItem()
        shopItem4 = ShopItem()
        shopItem5 = ShopItem()
        shopItem6 = ShopItem()
        shopItem7 = ShopItem()
        shopItem8 = ShopItem()
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
        
        money = UILabel(frame: CGRect (x: view.bounds.midX - 200, y: view.bounds.midY - 300, width: 100, height: 100))
        money.text = String(Player.shared.GetMoney()) + " G"
        view.addSubview(money)
            
        shopItem1.SetUpShopItem(name: "Baseaxe", price: 100, position: 1, view: view)
        shopItem2.SetUpShopItem(name: "Baseaxe", price: 100, position: 2, view: view)
        shopItem3.SetUpShopItem(name: "Baseaxe", price: 100, position: 3, view: view)
        shopItem4.SetUpShopItem(name: "Baseaxe", price: 100, position: 4, view: view)
        shopItem5.SetUpShopItem(name: "Baseaxe", price: 100, position: 5, view: view)
        shopItem6.SetUpShopItem(name: "Baseaxe", price: 100, position: 6, view: view)
        shopItem7.SetUpShopItem(name: "Baseaxe", price: 100, position: 7, view: view)
        shopItem8.SetUpShopItem(name: "Baseaxe", price: 100, position: 8, view: view)
        
        view.addSubview(shopItem1.Button)
        view.addSubview(shopItem1.Label)
        view.addSubview(shopItem2.Button)
        view.addSubview(shopItem2.Label)
        view.addSubview(shopItem3.Button)
        view.addSubview(shopItem3.Label)
        view.addSubview(shopItem4.Button)
        view.addSubview(shopItem4.Label)
        view.addSubview(shopItem5.Button)
        view.addSubview(shopItem5.Label)
        view.addSubview(shopItem6.Button)
        view.addSubview(shopItem6.Label)
        view.addSubview(shopItem7.Button)
        view.addSubview(shopItem7.Label)
        view.addSubview(shopItem8.Button)
        view.addSubview(shopItem8.Label)
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
        
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
