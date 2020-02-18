//
//  DietView.swift
//  Dungeons and Dieting
//
//  Created by Raphael Rodriguez on 2020-02-18.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation
import UIKit
class DietView:UIViewController{
    var calorieTextField0:UITextField;
    var calorieTextField1:UITextField;
    
    init(){
        calorieTextField0 = UITextField();
        calorieTextField1 = UITextField();
        calorieTextField0.text = "Please Input Calories"
        calorieTextField1.text = "Please Input Calories"
        super.init(nibName:nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(calorieTextField0);
        view.addSubview(calorieTextField1);
    }
    
    
}
