//
//  ViewController.swift
//  baking-app
//
//  Created by block7 on 1/15/16.
//  Copyright © 2016 noahhuppert.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    var recipes: [Recipe] = [
        Recipe(id: 0, name: "1"),
        Recipe(id: 1, name: "2"),
        Recipe(id: 2, name: "3"),
        Recipe(id: 3, name: "4"),
        Recipe(id: 4, name: "5"),
        Recipe(id: 5, name: "6"),
        Recipe(id: 6, name: "7"),
        Recipe(id: 7, name: "8"),
        Recipe(id: 8, name: "9"),
        Recipe(id: 9, name: "10")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        let dc = segue.destinationViewController as! IngredientsWarningViewController
        dc.recipe = sender as! Recipe
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return recipes.count
    }
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let row = indexPath.row
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("cell", forIndexPath: indexPath) as! RecipeCell
        cell.recipe = recipes[row]
        cell.updateUI()
        
        return cell
    }
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        let row = indexPath.row
        
        performSegueWithIdentifier("to_ingredients_warning", sender: recipes[row])
    }
}
