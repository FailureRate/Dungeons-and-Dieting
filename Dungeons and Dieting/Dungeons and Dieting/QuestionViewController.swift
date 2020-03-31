//
//  QuestionViewController.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-02-25.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
import SpriteKit
import GameplayKit


class QuestionViewController : UIViewController  {
    var name: UITextField
    var age: UITextField
    var calorieCount: UITextField
    var proceedButton: UIButton
    
    init(){
        name = UITextField()
        age = UITextField()
        calorieCount = UITextField()
        proceedButton = UIButton();
        super.init(nibName:nil, bundle: nil)
    }
       required init?(coder aDecoder: NSCoder) {
        name = UITextField()
        age = UITextField()
        calorieCount = UITextField()
        proceedButton = UIButton()
        super.init(coder: aDecoder)
        
    }
       override func viewDidLoad() {
        name = UITextField(frame: CGRect(x:0, y:0, width: 400,height:50))
        age = UITextField(frame: CGRect(x:0, y:0, width: 400,height:50))
        calorieCount = UITextField(frame: CGRect(x:0, y:0, width: 400,height:50))
        proceedButton = UIButton(frame: CGRect (x: (view.bounds.maxX - 50) / 2, y: view.bounds.maxY - 150, width: 50, height: 50))
        
       name.center = CGPoint(x: self.view.center.x, y: self.view.center.y - 100);
        age.center = self.view.center;
       calorieCount.center = CGPoint(x: self.view.center.x, y: self.view.center.y + 100);
        
        name.backgroundColor = .white
        age.backgroundColor = .white
        calorieCount.backgroundColor = .white
        guard let customFont = UIFont(name: "ComicSansMS" , size: 20) else {
        fatalError("""
            Failed to load the "Comic Sans MS" font.
            Make sure the font file is included in the project and the font name is spelled correctly.
            """
            )
        }
          name.font = UIFontMetrics.default.scaledFont(for: customFont)
        age.font = UIFontMetrics.default.scaledFont(for: customFont)
        calorieCount.font = UIFontMetrics.default.scaledFont(for: customFont)
        
        name.placeholder = "Please Input Name"
        name.borderStyle = .line
        
        age.keyboardType = .numberPad
        age.placeholder = "Please Input Age"
        name.borderStyle = .line

        
        calorieCount.keyboardType = .numberPad
        calorieCount.placeholder = "Please Input Calories"
        calorieCount.borderStyle = .line
        
    
        //Tool Bar code
        let toolBar = UIToolbar();
        toolBar.sizeToFit();
        let doneButton = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.done, target: self, action: #selector(self.doneClicked))
               
        toolBar.setItems([doneButton], animated: false)
        // set all keyobards to have toolbar
        name.inputAccessoryView = toolBar;
        age.inputAccessoryView = toolBar;
        calorieCount.inputAccessoryView = toolBar;
        
        
        view.addSubview(name);
        view.addSubview(age);
        view.addSubview(calorieCount);
        view.addSubview(proceedButton)
        proceedButton.setImage(UIImage(named: "Button"), for: .normal)
        proceedButton.addTarget(self, action: #selector(moveNextScreen), for: .touchUpInside)
        super.viewDidLoad()
    }
    
    
    
    @objc func doneClicked(){
        view.endEditing(true);
    }
    
    @objc func moveNextScreen(){
        if(calorieCount.text == "" || age.text == "" || name.text == ""){
            
        }
        else{
            let newViewController = MapViewController()
            newViewController.view.backgroundColor = .green
            newViewController.modalPresentationStyle = .fullScreen
            self.present(newViewController, animated: false, completion: nil)
        }
    }
}
