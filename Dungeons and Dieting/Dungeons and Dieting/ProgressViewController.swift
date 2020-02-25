//
//  GameViewController5.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit

class ProgressViewController:UIViewController {
    // These are all the buttons for the menu
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    // UI Text Fields
    var calorieTextField0:UITextField;
    
    init() {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        calorieTextField0 = UITextField()
        super.init(nibName:nil, bundle: nil)

    }

    required init?(coder aDecoder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        calorieTextField0 = UITextField()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        calorieTextField0 =  UITextField(frame: CGRect(x:0,y:0,width: 400,height:50));
        calorieTextField0.center = self.view.center;
        calorieTextField0.backgroundColor = .white;
        guard let customFont = UIFont(name: "ComicSansMS" , size: 20) else {
        fatalError("""
            Failed to load the "Comic Sans MS" font.
            Make sure the font file is included in the project and the font name is spelled correctly.
            """
            )
        }
        calorieTextField0.font = UIFontMetrics.default.scaledFont(for: customFont)
            
        calorieTextField0.keyboardType = .numberPad;
        calorieTextField0.placeholder = "Please Input Calories"
        calorieTextField0.borderStyle = .line

                
        
        //Tool Bar code
        let toolBar = UIToolbar();
        toolBar.sizeToFit();
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        // set all keyobards to have toolbar
        calorieTextField0.inputAccessoryView = toolBar;
        
        view.addSubview(friendButton)
        view.addSubview(itemButton)
        view.addSubview(mapButton)
        view.addSubview(progressButton)
        view.addSubview(shopButton)
        view.addSubview(calorieTextField0);
        
        friendButton.setImage(UIImage(named: "Button"), for: .normal)
        itemButton.setImage(UIImage(named: "Button"), for: .normal)
        mapButton.setImage(UIImage(named: "Button"), for: .normal)
        progressButton.setImage(UIImage(named: "Button"), for: .normal)
        shopButton.setImage(UIImage(named: "Button"), for: .normal)
        
        friendButton.addTarget(self, action: #selector(toFriend), for: .touchUpInside)
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        mapButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
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
    
    @IBAction func toMap() {
        let newViewController = MapViewController()
        newViewController.view.backgroundColor = .green
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    
    @IBAction func toShop() {
        let newViewController = ShopViewController()
        newViewController.view.backgroundColor = .orange
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    @objc func doneClicked(){
        view.endEditing(true);
    }
}
