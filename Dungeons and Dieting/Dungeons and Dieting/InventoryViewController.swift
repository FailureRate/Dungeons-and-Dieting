//
//  GameViewController3.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-01-21.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit


class InventoryViewController:UIViewController
{
    var friendButton: UIButton
    var itemButton: UIButton
    var mapButton: UIButton
    var progressButton: UIButton
    var shopButton: UIButton
    
    var HealthPtext:UILabel
      var Leveltext:UILabel
    var CurWtext:UILabel
    var PlayNamtext:UILabel
    
    
    var PlayerUIimage: UIImage
    var PlayerUIViewer: UIImageView
    
    
    var DailyQuestUIimage: UIImage
    var DailyQuestUIViewer: UIImageView
    
    var inventoryUIimage: UIImage
    var inventoryUIimage2: UIImage
    var inventoryUIimage3: UIImage
    var inventoryUIimage4: UIImage
    var inventoryUIimage5: UIImage
    var inventoryUIimage6: UIImage
    var inventoryUIimage7: UIImage
    var inventoryUIimage8: UIImage
    var inventoryUIimage9: UIImage
    var inventoryUIimage10: UIImage
    var inventoryUIimage11: UIImage
    var inventoryUIimage12: UIImage
    var inventoryUIimage13: UIImage
     var inventoryUIimage14: UIImage
     var inventoryUIimage15: UIImage
    var inventoryUIimage16: UIImage
     var inventoryUIimage17: UIImage
     var inventoryUIimage18: UIImage
    var inventoryUIimage19: UIImage
    
    
    
    
    
    var inventoryUIViewer: UIImageView
    var inventoryUIViewer2: UIImageView
    var inventoryUIViewer3: UIImageView
    var inventoryUIViewer4: UIImageView
    var inventoryUIViewer5: UIImageView
    var inventoryUIViewer6: UIImageView
    var inventoryUIViewer7: UIImageView
     var inventoryUIViewer8: UIImageView
     var inventoryUIViewer9: UIImageView
     var inventoryUIViewer10: UIImageView
     var inventoryUIViewer11: UIImageView
     var inventoryUIViewer12: UIImageView
     var inventoryUIViewer13: UIImageView
     var inventoryUIViewer14: UIImageView
     var inventoryUIViewer15: UIImageView
     var inventoryUIViewer16: UIImageView
     var inventoryUIViewer17: UIImageView
     var inventoryUIViewer18: UIImageView
     var inventoryUIViewer19: UIImageView
 
    
    var EuipmentUIimage: UIImage
    var EuipmentUIimage2: UIImage
    var EuipmentUUIimage3: UIImage
    var EuipmentUIimage4: UIImage
  
    
    var EuipmentUIViewer: UIImageView
       var EuipmentUIViewer2: UIImageView
       var EuipmentUIViewer3: UIImageView
       var EuipmentUIViewer4: UIImageView
    
   
    
    
    
    
    var equippedtext:UILabel
    var daliyquesttext:UILabel
    var Inventorytext:UILabel

    let level:Int
    let Cweight:Int
    let lastwe:Int
    
    var LastWtext:UILabel!


    init() {
   PlayerUIimage = UIImage()
        PlayerUIViewer = UIImageView()
       DailyQuestUIimage = UIImage()
        DailyQuestUIViewer = UIImageView()
        
        inventoryUIimage = UIImage()
        inventoryUIimage2 = UIImage()
        inventoryUIimage3 = UIImage()
        inventoryUIimage4 = UIImage()
        inventoryUIimage5 = UIImage()
        inventoryUIimage6 = UIImage()
        inventoryUIimage7 = UIImage()
        inventoryUIimage8 = UIImage()
        inventoryUIimage9 = UIImage()
        inventoryUIimage10 = UIImage()
        inventoryUIimage11 = UIImage()
        inventoryUIimage12 = UIImage()
        inventoryUIimage13 = UIImage()
        inventoryUIimage14 = UIImage()
        inventoryUIimage15 = UIImage()
        inventoryUIimage16 = UIImage()
        inventoryUIimage17 = UIImage()
        inventoryUIimage18 = UIImage()
        inventoryUIimage19 = UIImage()
       
        
        
        inventoryUIViewer = UIImageView()
        inventoryUIViewer2 = UIImageView()
        inventoryUIViewer3 = UIImageView()
        inventoryUIViewer4 = UIImageView()
        inventoryUIViewer5 = UIImageView()
        inventoryUIViewer6 = UIImageView()
        inventoryUIViewer7 = UIImageView()
        inventoryUIViewer8 = UIImageView()
        inventoryUIViewer9 = UIImageView()
        inventoryUIViewer10 = UIImageView()
        inventoryUIViewer11 = UIImageView()
        inventoryUIViewer12 = UIImageView()
        inventoryUIViewer13 = UIImageView()
        inventoryUIViewer14 = UIImageView()
        inventoryUIViewer15 = UIImageView()
        inventoryUIViewer16 = UIImageView()
        inventoryUIViewer17 = UIImageView()
        inventoryUIViewer18 = UIImageView()
        inventoryUIViewer19 = UIImageView()
       
        
        
        
        
        EuipmentUIimage = UIImage()
         EuipmentUIimage2 = UIImage()
         EuipmentUUIimage3 = UIImage()
         EuipmentUIimage4 = UIImage()
        
         EuipmentUIViewer = UIImageView()
         EuipmentUIViewer2 = UIImageView()
         EuipmentUIViewer3 = UIImageView()
         EuipmentUIViewer4 = UIImageView()
        
        
        
        HealthPtext = UILabel()
        Leveltext = UILabel()
        CurWtext = UILabel()
        PlayNamtext = UILabel()
        equippedtext = UILabel()
        daliyquesttext = UILabel()
        Inventorytext = UILabel()
        
        level = 0
        Cweight = 0
        lastwe = 0
        
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        super.init(nibName:nil, bundle: nil)    
    }
    
    
    required init?(coder: NSCoder) {
        friendButton = UIButton()
        itemButton = UIButton()
        mapButton = UIButton()
        progressButton = UIButton()
        shopButton = UIButton()
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let framelable :CGRect = CGRect(x:10,y:50,width: UIScreen.main.bounds.width - 40 , height: 100)
          let framelable2 :CGRect = CGRect(x:10,y:10,width: UIScreen.main.bounds.width - 45 , height: 150)
          let framelable3 :CGRect = CGRect(x:50,y:20,width: UIScreen.main.bounds.width - 60 , height: 190)
          let framelable4 :CGRect = CGRect(x:20,y:40,width: UIScreen.main.bounds.width - 90 , height: 200)
          let framelable5 :CGRect = CGRect(x:70,y:40,width: UIScreen.main.bounds.width - 80 , height: 200)
          let framelable6 :CGRect = CGRect(x:70,y:40,width: UIScreen.main.bounds.width - 80 , height: 200)
              
        let framelable7 :CGRect = CGRect(x:70,y:40,width: UIScreen.main.bounds.width - 80 , height: 200)
              
        let framelable8 :CGRect = CGRect(x:70,y:40,width: UIScreen.main.bounds.width - 80 , height: 200)
        
        PlayerUIimage = UIImage(named: "boxSelect")!
         PlayerUIViewer = UIImageView(image: PlayerUIimage)
         PlayerUIViewer.frame = CGRect(x: 50, y: 120, width: 150, height: 150)
          view.addSubview( PlayerUIViewer)
        
        DailyQuestUIimage = UIImage(named: "boxSelect")!
        DailyQuestUIViewer = UIImageView(image: DailyQuestUIimage)
        DailyQuestUIViewer.frame = CGRect(x: 80, y: 300, width: 250, height: 150)
        view.addSubview(DailyQuestUIViewer)

        inventoryUIimage = UIImage(named: "boxSelect")!
        inventoryUIimage2 = UIImage(named: "boxSelect")!
        inventoryUIimage3 = UIImage(named: "boxSelect")!
        inventoryUIimage4 = UIImage(named: "boxSelect")!
        inventoryUIimage5 = UIImage(named: "boxSelect")!
        inventoryUIimage6 = UIImage(named: "boxSelect")!
        inventoryUIimage7 = UIImage(named: "boxSelect")!
        inventoryUIimage8 = UIImage(named: "boxSelect")!
        inventoryUIimage9 = UIImage(named: "boxSelect")!
        inventoryUIimage10 = UIImage(named: "boxSelect")!
        inventoryUIimage11 = UIImage(named: "boxSelect")!
        inventoryUIimage12 = UIImage(named: "boxSelect")!
        inventoryUIimage13 = UIImage(named: "boxSelect")!
        inventoryUIimage14 = UIImage(named: "boxSelect")!
        inventoryUIimage15 = UIImage(named: "boxSelect")!
        inventoryUIimage16 = UIImage(named: "boxSelect")!
        inventoryUIimage17 = UIImage(named: "boxSelect")!
        inventoryUIimage18 = UIImage(named: "boxSelect")!
                           
        
      inventoryUIViewer = UIImageView(image: inventoryUIimage)
      inventoryUIViewer2 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer3 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer4 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer5 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer6 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer7 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer8 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer9 = UIImageView(image: inventoryUIimage)
     
      inventoryUIViewer11 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer12 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer13 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer14 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer15 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer16 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer17 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer18 = UIImageView(image: inventoryUIimage)
      inventoryUIViewer19 = UIImageView(image: inventoryUIimage)
     
        
        inventoryUIViewer.frame = CGRect(x: 50, y: 500, width: 60, height: 60)
         inventoryUIViewer2.frame = CGRect(x: 100, y: 500, width: 60, height: 60)
         inventoryUIViewer3.frame = CGRect(x: 150, y: 500, width: 60, height: 60)
         inventoryUIViewer4.frame = CGRect(x: 200, y: 500, width: 60, height: 60)
         inventoryUIViewer5.frame = CGRect(x: 250, y: 500, width: 60, height: 60)
         inventoryUIViewer6.frame = CGRect(x: 300, y: 500, width: 60, height: 60)
       
        inventoryUIViewer7.frame = CGRect(x: 50, y: 550, width: 60, height: 60)
        inventoryUIViewer8.frame = CGRect(x: 100, y: 550, width: 60, height: 60)
        inventoryUIViewer9.frame = CGRect(x: 150, y: 550, width: 60, height: 60)
         inventoryUIViewer10.frame = CGRect(x:200, y: 550, width: 60, height: 60)
        inventoryUIViewer11.frame = CGRect(x: 200, y: 550, width: 60, height: 60)
        inventoryUIViewer12.frame = CGRect(x: 250, y: 550, width: 60, height: 60)
        inventoryUIViewer13.frame = CGRect(x: 300, y: 550, width: 60, height: 60)
     
        inventoryUIViewer14.frame = CGRect(x: 50, y: 600, width: 60, height: 60)
      inventoryUIViewer15.frame = CGRect(x: 100, y: 600, width: 60, height: 60)
      inventoryUIViewer16.frame = CGRect(x: 150, y: 600, width: 60, height: 60)
      inventoryUIViewer17.frame = CGRect(x: 200, y: 600, width: 60, height: 60)
      inventoryUIViewer18.frame = CGRect(x: 250, y: 600, width: 60, height: 60)
      inventoryUIViewer19.frame = CGRect(x: 300, y: 600, width: 60, height: 60)
        
  
        self.view.addSubview(inventoryUIViewer)
        self.view.addSubview(inventoryUIViewer2)
        self.view.addSubview(inventoryUIViewer3)
        self.view.addSubview(inventoryUIViewer4)
        view.addSubview(inventoryUIViewer5)
        view.addSubview(inventoryUIViewer6)
        view.addSubview(inventoryUIViewer7)
        view.addSubview(inventoryUIViewer8)
        view.addSubview(inventoryUIViewer9)
        view.addSubview(inventoryUIViewer10)
        view.addSubview(inventoryUIViewer11)
        view.addSubview(inventoryUIViewer12)
        view.addSubview(inventoryUIViewer13)
        view.addSubview(inventoryUIViewer14)
        
        
        view.addSubview(inventoryUIViewer15)
        view.addSubview(inventoryUIViewer16)
        view.addSubview(inventoryUIViewer17)
        view.addSubview(inventoryUIViewer18)
        view.addSubview(inventoryUIViewer19)
        
        
        
        EuipmentUIimage = UIImage(named: "boxHover")!
        EuipmentUIimage2 = UIImage(named: "boxHover")!
        EuipmentUUIimage3 = UIImage(named: "boxHover")!
        EuipmentUIimage4 = UIImage(named: "boxHover")!
        
        EuipmentUIViewer = UIImageView(image: EuipmentUIimage)
        EuipmentUIViewer2 = UIImageView(image: EuipmentUIimage)
        EuipmentUIViewer3 = UIImageView(image: EuipmentUIimage)
        EuipmentUIViewer4 = UIImageView(image: EuipmentUIimage)
        
        
      EuipmentUIViewer.frame = CGRect(x: 300, y: 150, width: 60, height: 60)
      EuipmentUIViewer2.frame = CGRect(x: 300, y: 200, width: 60, height: 60)
      EuipmentUIViewer3.frame = CGRect(x: 350, y: 150, width: 60, height: 60)
      EuipmentUIViewer4.frame = CGRect(x: 350, y: 200, width: 60, height: 60)
   
        self.view.addSubview(EuipmentUIViewer)
        self.view.addSubview(EuipmentUIViewer2)
        self.view.addSubview(EuipmentUIViewer3)
        self.view.addSubview(EuipmentUIViewer4)
        
     
                         
        
        LastWtext =  UILabel(frame: framelable)
        LastWtext.text = "last Cal"
      
        CurWtext  =  UILabel(frame: framelable2)
        CurWtext.text = " cur cal"
       
        PlayNamtext =  UILabel(frame: framelable3)
        PlayNamtext.text = "name"
        
       HealthPtext =  UILabel(frame: framelable4)
        HealthPtext.text  = "health"
        
        Leveltext  =  UILabel(frame: framelable5)
        Leveltext.text = "Level"
        
        equippedtext = UILabel(frame: framelable6)
        equippedtext.text = "Equipment"
        
        daliyquesttext = UILabel(frame: framelable7)
        daliyquesttext.text = "Daily Quest"
       
        Inventorytext = UILabel(frame: framelable8)
        Inventorytext.text = "Inventory"
        
        
        
        self.view.addSubview(LastWtext)
        self.view.addSubview(CurWtext)
        self.view.addSubview(PlayNamtext)
        self.view.addSubview(HealthPtext)
        self.view.addSubview(Leveltext)
        self.view.addSubview(equippedtext)
        self.view.addSubview(daliyquesttext)
        self.view.addSubview(Inventorytext)
        
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
        mapButton.addTarget(self, action: #selector(toMap), for: .touchUpInside)
        progressButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
        shopButton.addTarget(self, action: #selector(toShop), for: .touchUpInside)
    }
    
    @IBAction func toFriend() {
        let newViewController = FriendViewController()
        newViewController.view.backgroundColor = .blue
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

    
  
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

  
}



