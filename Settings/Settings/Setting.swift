//
//  Setting.swift
//  Settings
//
//  Created by Benjamin Tincher on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit    //  NOTE that UIKit imports Foundation so that does not need to be separately imported

class Setting {
    let name: String
    let icon: UIImage
    var isOn: Bool
    
    init(name: String, icon: UIImage, isOn: Bool = false) {
        self.name = name
        self.icon = icon
        self.isOn = isOn
    }
}
