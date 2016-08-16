//
//  CheckoutViewController.swift
//  Shopping list Bobby
//
//  Created by ED on 14/08/2016.
//  Copyright © 2016 ED. All rights reserved.
//

import UIKit

class CheckoutViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var totalPriceLabel: UILabel!
    @IBOutlet weak var theTableView: UITableView!
    
    var checkoutShoppingName: [String]!
    var checkoutShoppingPrice = [String]()
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return checkoutShoppingName.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        cell.textLabel?.text = checkoutShoppingName[indexPath.row]
        cell.detailTextLabel?.text = checkoutShoppingPrice[indexPath.row]
        
        return cell
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.theTableView.delegate = self
        self.theTableView.dataSource = self
        
        print(checkoutShoppingName)
    }
}
