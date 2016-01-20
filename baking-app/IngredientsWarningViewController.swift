//
//  IngredientsWarningViewController.swift
//  baking-app
//
//  Created by Noah Huppert on 1/19/16.
//  Copyright © 2016 noahhuppert.com. All rights reserved.
//

import UIKit

class IngredientsWarningViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    var recipe: Recipe?
    var uiIngredients: [UIIngredient] = [UIIngredient]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        for ing in (recipe?.ingredients)! {
            uiIngredients.append(UIIngredient(ingredient: ing));
        }
    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dc = segue.destinationViewController as! StepsViewController
        dc.recipe = recipe
    }
    
    @IBAction func onContinueButtonClicked(sender: AnyObject) {
        performSegueWithIdentifier("to_steps", sender: nil)
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (recipe?.ingredients.count)!
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let row = indexPath.row
        
        let cell = tableView.dequeueReusableCellWithIdentifier("cell")
        let ingredient = uiIngredients[row]
        
        cell?.textLabel?.text = "\(ingredient.name) X \(ingredient.ammount)"
        if ingredient.checked {
            cell?.accessoryType = .Checkmark
        } else {
            cell?.accessoryType = .None
        }
        
        return cell!
    }
    
    func tableView(tableView: UITableView, didDeselectRowAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        uiIngredients[row].checked = !uiIngredients[row].checked
        
        if uiIngredients[row].checked {
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = .Checkmark
        } else {
            tableView.cellForRowAtIndexPath(indexPath)?.accessoryType = .None
        }
    }
}
