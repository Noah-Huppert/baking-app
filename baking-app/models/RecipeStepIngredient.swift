//
// Created by block7 on 2/3/16.
// Copyright (c) 2016 noahhuppert.com. All rights reserved.
//

import Foundation

class RecipeStepIngredient {
    var ingredient: Ingredient
    var quantity: Int

    init(ingredient: Ingredient, quantity: Int) {
        self.ingredient = ingredient
        self.quantity = quantity
    }
}
