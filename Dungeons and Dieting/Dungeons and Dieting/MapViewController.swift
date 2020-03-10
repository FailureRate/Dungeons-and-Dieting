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
import MapKit
import CoreLocation

class MapViewController: UIViewController , CLLocationManagerDelegate {
   
 
    
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
     var mapview: MKMapView
    
    init() {
        mapview = MKMapView()
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        mapview = MKMapView()
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
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
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
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
