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

class GameViewController: UIViewController {

    var PlayButtom: UIButton
    var SettingButtom: UIButton
    var QuitButtom: UIButton
    
    
    init()
    {
        PlayButtom = UIButton(frame:CGRect (x:0,y:0,width:100, height:50))
       SettingButtom = UIButton(frame:CGRect (x:0,y:50,width:100, height:50))
        QuitButtom = UIButton(frame:CGRect (x:0,y:100,width:100, height:50))
        super.init(nibName:nil, bundle: nil)
    }

    required init?(coder aDecoder: NSCoder) {
        PlayButtom = UIButton(frame:CGRect (x:0,y:0,width:100, height:50))
        SettingButtom = UIButton(frame:CGRect (x:0,y:0,width:100, height:50))
        QuitButtom = UIButton(frame:CGRect (x:0,y:0,width:100, height:50))
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
     view.addSubview(PlayButtom)
      view.addSubview(  SettingButtom)
       view.addSubview(   QuitButtom)
    }
    
    @objc func ButtomTapped(){}
    
   /* override func viewDidLoad() {
        super.viewDidLoad()
        
        if let view = self.view as! SKView? {
            // Load the SKScene from 'GameScene.sks'
            if let scene = SKScene(fileNamed: "GameScene") {
                // Set the scale mode to scale to fit the window
                scene.scaleMode = .aspectFill
                
                // Present the scene
                view.presentScene(scene)
            }
            
            view.ignoresSiblingOrder = true
            
            view.showsFPS = true
            view.showsNodeCount = true
        }
    }

    override var shouldAutorotate: Bool {
        return true
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        if UIDevice.current.userInterfaceIdiom == .phone {
            return .allButUpsideDown
        } else {
            return .all
        }
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }*/
}
