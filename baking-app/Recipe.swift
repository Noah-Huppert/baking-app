//
//  Recipe.swift
//  baking-app
//
//  Created by block7 on 1/19/16.
//  Copyright © 2016 noahhuppert.com. All rights reserved.
//

class Recipe {
    var id: Int
    var name: String
    var ingredients: [Ingredient]
    var steps: [Step]
    
    init(id: Int, name: String) {
        self.id = id
        self.name = name
        self.ingredients = [
            Ingredient(name: "one", ammount: 4.5),
            Ingredient(name: "two", ammount: 2),
            Ingredient(name: "three", ammount: 6),
            Ingredient(name: "four", ammount: 1),
            Ingredient(name: "five", ammount: 3),
            Ingredient(name: "six", ammount: 0.75)
        ]
        
        self.steps = [
            Step(text: "Put the thing in the thing"),
            Step(text: "Mush the stuff around"),
            Step(text: "Pour another thing into the mushy thing"),
            Step(text: "Stir the mushy thing until it is not mushy"),
            Step(text: "Put the not mushy things on a pan"),
            Step(text: "Let the pan get really got while the not mushy stuff is on it"),
        ]
    }
}
