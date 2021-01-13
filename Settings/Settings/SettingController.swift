//
//  SettingController.swift
//  Settings
//
//  Created by Benjamin Tincher on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import Foundation

class SettingController {
    
    static let shared = SettingController()
    
    let settings: [Setting] = {
        let music = Setting(name: "Music", icon: #imageLiteral(resourceName: "iTunes"))
        let books = Setting(name: "Books", icon: #imageLiteral(resourceName: "iBooks"))
        let apps = Setting(name: "Apps", icon: #imageLiteral(resourceName: "appStore"))
        
        return [music, books, apps]
    }()
    
    func toggleIsOn(setting: Setting){
        setting.isOn.toggle()
        
        /*
         .toggle() performs same as the function below -  it toggles any boolean status back and forth
            if setting.isOn == true {
                setting.isOn = false
            } else {
                setting.isOn = true
            }
         
         Could also use:
            setting.isOn != setting.isOn
         */
    }
}
