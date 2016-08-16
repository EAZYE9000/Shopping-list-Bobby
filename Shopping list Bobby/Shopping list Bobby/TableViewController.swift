//
//  TableViewController.swift
//  Shopping list Bobby
//
//  Created by ED on 13/08/2016.
//  Copyright © 2016 ED. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {

    var shoppingName = [String]()
    var shoppingPrice = [String]()
    
    var toCheckoutName = [String]()
    var toCheckoutPrice = [String]()
    
    var selected = [Bool]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(toCheckoutName)
        
        
        
    }
    
    
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return shoppingName.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
        
        cell.mainTextLabel?.text = shoppingName[indexPath.row]
        cell.secondTextLabel?.text = shoppingPrice[indexPath.row]
        
        return cell
    }
    
    @IBAction func unwindToTableView(segue: UIStoryboardSegue) {
        let sourceViewController = segue.sourceViewController as! EditNameTableView
        
        shoppingName.append(sourceViewController.nameTextField.text!)
        shoppingPrice.append(sourceViewController.priceTextField.text!)
        tableView.reloadData()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "checkoutSegue" {
            let destinationViewController = segue.destinationViewController as! CheckoutViewController
            
            var cell = tableView.dequeueReusableCellWithIdentifier("cell") as! CustomCell
            
            var selectedName = cell.selectedNameText
            
            selectedName = destinationViewController.checkoutShoppingName
            destinationViewController.checkoutShoppingPrice = shoppingPrice 
        }
    }
    
   
  /* override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! CustomCell
    if cell.accessoryType == .None {
        cell.accessoryType = .Checkmark
    } else {
        if cell.accessoryType == .Checkmark {
            cell.accessoryType = .None
    } else {
        return
        }
    }
    } */
}
