//
// Created by block7 on 2/3/16.
// Copyright (c) 2016 noahhuppert.com. All rights reserved.
//

import Foundation

class RecipeStep {
    var text: String
    var ingredients: [RecipeStepIngredient]

    init(text: String, ingredients: [RecipeStepIngredient]) {
        self.text = text
        self.ingredients = ingredients
    }
}
