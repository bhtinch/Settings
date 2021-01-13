//
//  SettingsListTableViewController.swift
//  Settings
//
//  Created by Benjamin Tincher on 1/13/21.
//  Copyright © 2021 Karl Pfister. All rights reserved.
//

import UIKit

class SettingsListTableViewController: UITableViewController {
    
    //  MARK: - Outlets
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    //  MARK: - Actions
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return SettingController.shared.settings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "settingCell", for: indexPath) as? SettingTableViewCell else { return UITableViewCell() }
        
        let setting = SettingController.shared.settings[indexPath.row]
        
        cell.delegate = self
        cell.updateViews(setting: setting)

        return cell
    }
}

extension SettingsListTableViewController: SettingCellDelegate {
    func settingIsOnSwitchToggled(cell: SettingTableViewCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        let setting = SettingController.shared.settings[indexPath.row]
        setting.isOn.toggle()
        //  Can also use statement to the right instead of the one above ->  SettingController.shared.toggleIsOn(setting: setting)
        //  print(setting.name)
        //  print(setting.isOn)
        cell.updateViews(setting: setting)
    }
}
