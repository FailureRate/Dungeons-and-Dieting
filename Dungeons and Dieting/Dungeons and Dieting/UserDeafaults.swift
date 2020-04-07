//
//  UserDeafaults.swift
//  Dungeons and Dieting
//
//  Created by Arifa Tyrell on 2020-03-10.
//  Copyright © 2020 ThreePlayerProductions. All rights reserved.
//

import Foundation

extension UserDefaults{
    func setValueForCalories(value: String?){
        if value != nil {
            UserDefaults.standard.set(value, forKey: "Calorie Amount")
        }else{
            UserDefaults.standard.removeObject(forKey: "Calorie Amount")
        }
        UserDefaults.standard.synchronize()
    }
    
    func setValueForCalories1(value: String?){
        if value != nil {
            UserDefaults.standard.set(value, forKey: "Calorie Amount1")
        }else{
            UserDefaults.standard.removeObject(forKey: "Calorie Amount1")
        }
        UserDefaults.standard.synchronize()
    }

    func setValueForCalories2(value: String?){
        if value != nil {
            UserDefaults.standard.set(value, forKey: "Calorie Amount2")
        }else{
            UserDefaults.standard.removeObject(forKey: "Calorie Amount2")
        }
        UserDefaults.standard.synchronize()
    }

    func setValueForCalories3(value: String?){
        if value != nil {
            UserDefaults.standard.set(value, forKey: "Calorie Amount3")
        }else{
            UserDefaults.standard.removeObject(forKey: "Calorie Amount3")
        }
        UserDefaults.standard.synchronize()
    }

    func getValueofCalories() -> String?{
        return UserDefaults.standard.value(forKey: "Calorie Amount") as? String
    }
    
      func getValueofCalories1() -> String?{
          return UserDefaults.standard.value(forKey: "Calorie Amount1") as? String
      }
    
      func getValueofCalories2() -> String?{
          return UserDefaults.standard.value(forKey: "Calorie Amount2") as? String
      }
    
      func getValueofCalories3() -> String?{
          return UserDefaults.standard.value(forKey: "Calorie Amount3") as? String
      }}
