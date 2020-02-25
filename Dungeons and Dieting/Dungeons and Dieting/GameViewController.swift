//
//  GameViewController.swift
//  Dungeons and Dieting
//
//  Created by Matthew Ferreira on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import UIKit
import SpriteKit
import GameplayKit
import CoreLocation

class GameViewController: UIViewController {

    // Changed Nothing
    
    var playButton: UIButton
        
    init() {
        playButton = UIButton(frame: CGRect (x: 0, y: 0, width: 100, height: 100))
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        playButton = UIButton(frame: CGRect (x: 0, y: 0, width: 100, height: 100))
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(playButton)
        playButton.setImage(UIImage(named: "Button"), for: .normal)
        playButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
        playButton.translatesAutoresizingMaskIntoConstraints = false
        playButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        playButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    @IBAction func toMap() {
        let mapViewController = MapViewController()
        mapViewController.view.backgroundColor = .white
        mapViewController.modalPresentationStyle = .fullScreen
        self.present(mapViewController, animated: false, completion: nil)
    }
}
