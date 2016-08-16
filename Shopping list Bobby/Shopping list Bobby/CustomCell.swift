//
//  CustomCell.swift
//  Shopping list Bobby
//
//  Created by ED on 13/08/2016.
//  Copyright © 2016 ED. All rights reserved.
//

import UIKit

class CustomCell: UITableViewCell {
    
    var selectedNameText = [String]()

    @IBOutlet weak var mainTextLabel: UILabel!
    @IBOutlet weak var secondTextLabel: UILabel!
    @IBOutlet weak var switchButton: UISwitch!
    
    @IBAction func switchButtonAction(sender: UISwitch) {
        switchButtonOutput()
    
        print("Selected Name text Array = \(selectedNameText)")
    }
    
    func switchButtonOutput() -> [String]! {
        if switchButton.on == true {
            selectedNameText.append(mainTextLabel.text!)
               } else {
             if switchButton.on == false && selectedNameText.count > 0 {
             selectedNameText.removeLast()
        }
            
        }
        
        return selectedNameText
    }
    
}