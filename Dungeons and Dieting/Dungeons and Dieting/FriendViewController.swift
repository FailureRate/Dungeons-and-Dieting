//
//  GameViewController4.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class FriendViewController: UIViewController{
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    
    
     var FriendNametext:UILabel
     var Equipmenttext:UILabel
     var leveltext:UILabel
    var healthtext:UILabel
    
    
    var inventoryUIimage: UIImage
    var inventoryUIimage2: UIImage
    var inventoryUIimage3: UIImage
    var inventoryUIimage4: UIImage
    var inventoryUIViewer: UIImageView
    var inventoryUIViewer2: UIImageView
    var inventoryUIViewer3: UIImageView
    var inventoryUIViewer4: UIImageView
    
    var PlayerUIimage: UIImage
     var PlayerUIViewer: UIImageView
    
    
    init() {
        FriendNametext = UILabel()
             Equipmenttext = UILabel()
             leveltext = UILabel()
        healthtext = UILabel()
        
        inventoryUIimage = UIImage()
        inventoryUIimage2 = UIImage()
        inventoryUIimage3 = UIImage()
        inventoryUIimage4 = UIImage()
        
        inventoryUIViewer = UIImageView()
        inventoryUIViewer2 = UIImageView()
        inventoryUIViewer3 = UIImageView()
        inventoryUIViewer4 = UIImageView()
        
        PlayerUIimage = UIImage()
               PlayerUIViewer = UIImageView()
        
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        super.init(nibName:nil, bundle: nil)

    }

    required init?(coder aDecoder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        
        FriendNametext = UILabel()
        Equipmenttext = UILabel()
        leveltext = UILabel()
        healthtext = UILabel()
        
        inventoryUIimage = UIImage()
        inventoryUIimage2 = UIImage()
        inventoryUIimage3 = UIImage()
        inventoryUIimage4 = UIImage()
      
        inventoryUIViewer = UIImageView()
        inventoryUIViewer2 = UIImageView()
        inventoryUIViewer3 = UIImageView()
        inventoryUIViewer4 = UIImageView()
        
        PlayerUIimage = UIImage()
               PlayerUIViewer = UIImageView()
              
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
        
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        mapButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
        
        let namelable :CGRect = CGRect(x:100,y:10,width:  300 , height: 150)
        let framelable7 :CGRect = CGRect(x:120,y:380,width: 880 , height: 200)
        let framelable8 :CGRect = CGRect(x:120,y:510,width: 880 , height: 200)
        let framelable9 :CGRect = CGRect(x:120,y:580,width: 880 , height: 200)
        
        FriendNametext = UILabel(frame: namelable)
        FriendNametext.text = "Name"
        FriendNametext.font = FriendNametext.font.withSize(80)
        
        Equipmenttext = UILabel(frame: framelable7)
        Equipmenttext.text = "Equipment"
        Equipmenttext.font = FriendNametext.font.withSize(40)
        
        leveltext = UILabel(frame: framelable8)
        leveltext.text = "Level"
        leveltext.font = leveltext.font.withSize(50)
        
        
        healthtext = UILabel(frame: framelable9)
        healthtext.text = "Health"
        healthtext.font = healthtext.font.withSize(50)
        
        self.view.addSubview(FriendNametext)
        self.view.addSubview(Equipmenttext)
        self.view.addSubview(leveltext)
        self.view.addSubview(healthtext)
        
        
        inventoryUIimage = UIImage(named: "boxSelect")!
        inventoryUIimage2 = UIImage(named: "boxSelect")!
        inventoryUIimage3 = UIImage(named: "boxSelect")!
        inventoryUIimage4 = UIImage(named: "boxSelect")!
        inventoryUIViewer = UIImageView(image: inventoryUIimage)
        inventoryUIViewer2 = UIImageView(image: inventoryUIimage)
        inventoryUIViewer3 = UIImageView(image: inventoryUIimage)
        inventoryUIViewer4 = UIImageView(image: inventoryUIimage)
        inventoryUIViewer.frame = CGRect(x: 100, y: 520, width: 60, height: 60)
        inventoryUIViewer2.frame = CGRect(x: 150, y: 520, width: 60, height: 60)
        inventoryUIViewer3.frame = CGRect(x: 200, y: 520, width: 60, height: 60)
        inventoryUIViewer4.frame = CGRect(x: 255, y: 520, width: 60, height: 60)
        self.view.addSubview(inventoryUIViewer)
       self.view.addSubview(inventoryUIViewer2)
       self.view.addSubview(inventoryUIViewer3)
       self.view.addSubview(inventoryUIViewer4)
        
        
        PlayerUIimage = UIImage(named: "boxSelect")!
        PlayerUIViewer = UIImageView(image: PlayerUIimage)
        PlayerUIViewer.frame = CGRect(x: 60, y: 170, width: 300, height: 300)
        view.addSubview( PlayerUIViewer)
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
    
    @IBAction func toShop() {
        let newViewController = ShopViewController()
        newViewController.view.backgroundColor = .orange
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
}

