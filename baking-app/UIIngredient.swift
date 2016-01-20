//
//  UIIngredient.swift
//  baking-app
//
//  Created by Noah Huppert on 1/19/16.
//  Copyright © 2016 noahhuppert.com. All rights reserved.
//

class UIIngredient: Ingredient {
    var checked: Bool
    
    init(ingredient: Ingredient) {
        self.checked = false
        super.init(name: ingredient.name, ammount: ingredient.ammount)
    }
    
    init(name: String, ammount: Float, checked: Bool) {
        self.checked = checked
        super.init(name: name, ammount: ammount)
    }
}