//
//  ProgressListView.swift
//  Dungeons and Dieting
//
//  Created by user163975 on 4/13/20.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import Foundation
import UIKit
import SpriteKit
import GameplayKit

class ProgressListView:UIViewController{
    var returnButton:UIButton
    var addTextFieldButton:UIButton
    var x:CGFloat = 0;
    var y:CGFloat = 0;
    var ButtonWidthHeight:CGFloat = 50;
    
    init(){
        returnButton  = UIButton()
        addTextFieldButton = UIButton()
        super.init(nibName:nil,bundle:nil)
    }
    required init?(coder aDecoder: NSCoder) {
        returnButton  = UIButton()
        addTextFieldButton = UIButton()
        super.init(coder: aDecoder)
    }
    
    override func viewDidLoad() {
    super.viewDidLoad()
        returnButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: ButtonWidthHeight, height: ButtonWidthHeight))
        
        addTextFieldButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 250, width: ButtonWidthHeight, height: ButtonWidthHeight))
        
        view.addSubview(returnButton)
        view.addSubview(addTextFieldButton)
        
        returnButton.setImage(UIImage(named:"Button"), for: .normal)
        addTextFieldButton.setImage(UIImage(named:"Button"), for: .normal)
        
        returnButton.addTarget(self, action: #selector(toProgress), for: .touchUpInside)
         addTextFieldButton.addTarget(self, action: #selector(addToSave), for: .touchUpInside)
    }
    
    @IBAction func toProgress() {
        let newViewController = ProgressViewController()
        newViewController.view.backgroundColor = .purple
        newViewController.modalPresentationStyle = .fullScreen
        self.present(newViewController, animated: false, completion: nil)
    }
    @IBAction func addToSave(){
        let textField = UITextField(frame: CGRect(x:0,y:y,width: 400,height:50));
      
      textField.center = CGPoint(x: self.view.center.x,y: y)
      //  textField.backgroundColor = .white;
        print("Run")
      textField.text = "New Test"
        self.view.addSubview(textField)
        y = y + 100;
    }
}
