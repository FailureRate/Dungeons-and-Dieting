//
//  GameViewController2.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class MapViewController: UIViewController {
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    
    init() {
        friendButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        friendButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: 0, y: 0, width: 50, height: 50))
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(friendButton)
        view.addSubview(itemButton)
        view.addSubview(mapButton)
        view.addSubview(progressButton)
        view.addSubview(shopButton)
        friendButton.addTarget(self, action: #selector(toFriend), for: .touchUpInside)
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
    }
    
    @IBAction func toFriend() {
        let newViewController = FriendViewController()
        newViewController.view.backgroundColor = .green
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toItem() {
        let newViewController = InventoryViewController()
        newViewController.view.backgroundColor = .green
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toProgress() {
        let newViewController = ProgressViewController()
        newViewController.view.backgroundColor = .green
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toShop() {
        let newViewController = ShopViewController()
        newViewController.view.backgroundColor = .green
        self.present(newViewController, animated: false, completion: nil)
    }
}
