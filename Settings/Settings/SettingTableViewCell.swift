//
//  SettingTableViewCell.swift
//  Settings
//
//  Created by Benjamin Tincher on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

//  1)  Create the Protocol (Boss) - written outside of the class and typically written above the class
protocol SettingCellDelegate: AnyObject {
    //  1.5)    State what the protocol (boss) can direct
    func settingIsOnSwitchToggled(cell: SettingTableViewCell)
}

class SettingTableViewCell: UITableViewCell {
    
    //  MARK: Outlets
    @IBOutlet weak var settingImageView: UIImageView!
    @IBOutlet weak var settingTextLabel: UILabel!
    @IBOutlet weak var settingIsOnSwitch: UISwitch!
    
    //  2)  Set the delegate - who the protocol is directing (which employee)
    weak var delegate: SettingCellDelegate?
    
    //  MARK: Actions
    @IBAction func settingIsOnSwitchToggled(_ sender: Any) {
        //  3)  Communicate to delegate (employee) instructions
        delegate?.settingIsOnSwitchToggled(cell: self)
    }
        
    //  MARK: Helper Funcs
    func updateViews(setting: Setting) {
        settingImageView.image = setting.icon
        settingTextLabel.text = setting.name
        settingIsOnSwitch.isOn = setting.isOn
        
        if setting.isOn {
            self.backgroundColor = .orange
            self.settingTextLabel.textColor = .systemIndigo
        } else {
            self.backgroundColor = .systemIndigo
            self.settingTextLabel.textColor = .orange
        }
    }
}
