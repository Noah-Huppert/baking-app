//
//  StepsViewController.swift
//  baking-app
//
//  Created by Noah Huppert on 1/19/16.
//  Copyright © 2016 noahhuppert.com. All rights reserved.
//

import UIKit

class StepsViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var recipe: Recipe?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.title = recipe!.name
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recipe!.steps.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        cell?.textLabel?.text = "\(row). \(recipe!.steps[row].text)"
        
        if recipe!.steps[row].completed {
            cell?.accessoryType = .Checkmark
        } else {
            cell?.accessoryType = .None
        }
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        recipe!.steps[row].completed = !recipe!.steps[row].completed
        
        print("ROW \(row)")
        
        let cell = tableView.cellForRowAtIndexPath(indexPath)
        
        if recipe!.steps[row].completed {
            cell?.accessoryType = .Checkmark
        } else {
            cell?.accessoryType = .None
        }
    }
}
