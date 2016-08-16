//
//  EditNameTableView.swift
//  Shopping list Bobby
//
//  Created by ED on 13/08/2016.
//  Copyright © 2016 ED. All rights reserved.
//

import UIKit

class EditNameTableView: UITableViewController, UITextFieldDelegate {

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    var newName: String!
    var newPrice: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.nameTextField.delegate = self
        self.priceTextField.delegate = self
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return false
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        nameTextField.resignFirstResponder()
        priceTextField.resignFirstResponder()
    }
    
    
    
}
