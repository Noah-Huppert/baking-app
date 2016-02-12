//
// Created by block7 on 2/3/16.
// Copyright (c) 2016 noahhuppert.com. All rights reserved.
//

import Foundation

class Recipe {
    var id: Int
    var name: String
    var thumbnailUri: String
    var steps: [RecipeStep]

    init(id: Int, name: String, thumbnailUri: String, steps: [RecipeStep]) {
        self.id = id
        self.name = name
        self.thumbnailUri = thumbnailUri
        self.steps = steps
    }
}
