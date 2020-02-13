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
        
        friendButton.setImage(UIImage(named: "circle"), for: .normal)
        friendButton.translatesAutoresizingMaskIntoConstraints = false
        friendButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        friendButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        itemButton.setImage(UIImage(named: "circle"), for: .normal)
        itemButton.translatesAutoresizingMaskIntoConstraints = false
        itemButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        itemButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        mapButton.setImage(UIImage(named: "circle"), for: .normal)
        mapButton.translatesAutoresizingMaskIntoConstraints = false
        mapButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        mapButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        progressButton.setImage(UIImage(named: "circle"), for: .normal)
        progressButton.translatesAutoresizingMaskIntoConstraints = false
        progressButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        progressButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        shopButton.setImage(UIImage(named: "circle"), for: .normal)
        shopButton.translatesAutoresizingMaskIntoConstraints = false
        shopButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        shopButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}
