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
    var floatbuttonHeightWidth = 50.0;
    // These are all the buttons for the menu
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    // UI Text Fields
    var calorieTextField0:UITextField;
    var calorieTextField1:UITextField;
    var calorieTextField2:UITextField;
    var calorieTextField3:UITextField;
    var saveButton:UIButton;
    var progressListButton:UIButton;
    //var text
    //var breakfast:UILabel
    //var lunch:UILabel
    //var dinner:UILabel
    //var snack:UILabel
    
    init() {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        calorieTextField0 = UITextField()
        calorieTextField1 = UITextField()
        calorieTextField2 = UITextField()
        calorieTextField3 = UITextField()
        saveButton = UIButton()
        progressListButton =  UIButton()
        super.init(nibName:nil, bundle: nil)

    }

    required init?(coder aDecoder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        calorieTextField0 = UITextField()
        calorieTextField1 = UITextField()
        calorieTextField2 = UITextField()
        calorieTextField3 = UITextField()
        saveButton = UIButton()
        progressListButton =  UIButton()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        friendButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        itemButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 - 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        mapButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: 50, height: 50))
        progressButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 100, y: view.bounds.maxY - 150, width: 50, height: 50))
        shopButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2 + 200, y: view.bounds.maxY - 150, width: 50, height: 50))
        saveButton = UIButton(frame: CGRect(x: (view.bounds.maxX - 50)/2 + 150, y: view.bounds.maxY - 300, width: 50, height: 50))
        progressListButton = UIButton(frame: CGRect(x: (view.bounds.maxX - 50)/2 - 100, y: view.bounds.maxY - 300, width: 50, height: 50))

        calorieTextField0 = UITextField(frame: CGRect(x:0,y:0,width: 400,height:50));
        calorieTextField1 = UITextField(frame: CGRect(x:0,y:0,width: 400,height:50));
        calorieTextField2 = UITextField(frame: CGRect(x:0,y:0,width: 400,height:50));
        calorieTextField3 = UITextField(frame: CGRect(x:0,y:0,width: 400,height:50));
        
        calorieTextField0.center = CGPoint(x: self.view.center.x,y: self.view.center.y + 100)
        calorieTextField1.center = CGPoint(x: self.view.center.x,y: self.view.center.y)
        calorieTextField2.center = CGPoint(x: self.view.center.x,y: self.view.center.y - 100)
        calorieTextField3.center = CGPoint(x: self.view.center.x,y: self.view.center.y - 200)
        
        calorieTextField0.backgroundColor = .white;
        calorieTextField1.backgroundColor = .white;
        calorieTextField2.backgroundColor = .white;
        calorieTextField3.backgroundColor = .white;
        guard let customFont = UIFont(name: "ComicSansMS" , size: 20) else {
        fatalError("""
            Failed to load the "Comic Sans MS" font.
            Make sure the font file is included in the project and the font name is spelled correctly.
            """
            )
        }
        
     
        calorieTextField0.font = UIFontMetrics.default.scaledFont(for: customFont)
         calorieTextField1.font = UIFontMetrics.default.scaledFont(for: customFont)
         calorieTextField2.font = UIFontMetrics.default.scaledFont(for: customFont)
         calorieTextField3.font = UIFontMetrics.default.scaledFont(for: customFont)
        
        calorieTextField0.keyboardType = .numberPad;
        calorieTextField0.placeholder = "Please Input Calories"
        calorieTextField0.borderStyle = .line
        
        calorieTextField1.keyboardType = .numberPad;
        calorieTextField1.placeholder = "Please Input Calories"
        calorieTextField1.borderStyle = .line
        
        calorieTextField2.keyboardType = .numberPad;
        calorieTextField2.placeholder = "Please Input Calories"
        calorieTextField2.borderStyle = .line
        
        calorieTextField3.keyboardType = .numberPad;
        calorieTextField3.placeholder = "Please Input Calories"
        calorieTextField3.borderStyle = .line
        let calories0 = UserDefaults.standard.getValueofCalories()
        let calories1 = UserDefaults.standard.getValueofCalories1()
        let calories2 = UserDefaults.standard.getValueofCalories2()
        let calories3 = UserDefaults.standard.getValueofCalories3()
        calorieTextField0.text = calories0;
        calorieTextField1.text = calories1;
        calorieTextField2.text = calories2;
        calorieTextField3.text = calories3;
        //Tool Bar code
        let toolBar = UIToolbar();
        toolBar.sizeToFit();
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
        
        toolBar.setItems([doneButton], animated: false)
        // set all keyobards to have toolbar
        calorieTextField0.inputAccessoryView = toolBar;
        calorieTextField1.inputAccessoryView = toolBar;
        calorieTextField2.inputAccessoryView = toolBar;
        calorieTextField3.inputAccessoryView = toolBar;
        
        view.addSubview(friendButton)
        view.addSubview(itemButton)
        view.addSubview(mapButton)
        view.addSubview(progressButton)
        view.addSubview(shopButton)
        view.addSubview(calorieTextField0);
        view.addSubview(calorieTextField1);
        view.addSubview(calorieTextField2);
        view.addSubview(calorieTextField3);
        view.addSubview(saveButton)
        view.addSubview(progressListButton)
        
        friendButton.setImage(UIImage(named: "Button"), for: .normal)
        itemButton.setImage(UIImage(named: "Button"), for: .normal)
        mapButton.setImage(UIImage(named: "Button"), for: .normal)
        progressButton.setImage(UIImage(named: "Button"), for: .normal)
        shopButton.setImage(UIImage(named: "Button"), for: .normal)
        saveButton.setImage(UIImage(named:"Button"), for: .normal)
        progressListButton.setImage(UIImage(named:"Button"), for: .normal)
        
        friendButton.addTarget(self, action: #selector(toFriend), for: .touchUpInside)
        itemButton.addTarget(self, action: #selector(toItem), for: .touchUpInside)
        mapButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
        saveButton.addTarget(self, action: #selector(onSaveData), for: .touchUpInside)
        progressListButton.addTarget(self, action: #selector(toProgressList), for: .touchUpInside)
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
    @IBAction func onSaveData(sender: UISwitch){
        let calorietest = calorieTextField0.text
        UserDefaults.standard.setValueForCalories(value: calorietest)
        UserDefaults.standard.setValueForCalories1(value: calorieTextField1.text)
        UserDefaults.standard.setValueForCalories2(value: calorieTextField2.text)
        UserDefaults.standard.setValueForCalories3(value: calorieTextField3.text)
        
  
        
    }
    @IBAction func toProgressList(){
        let newViewController = ProgressListView()
        newViewController.view.backgroundColor = .purple
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
        
    }
    @objc func doneClicked(){
        view.endEditing(true);
    }
}
