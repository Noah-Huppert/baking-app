//
//  Step.swift
//  baking-app
//
//  Created by Noah Huppert on 1/19/16.
//  Copyright © 2016 noahhuppert.com. All rights reserved.
//

class Step {
    var completed: Bool
    var text: String
    
    init(text: String) {
        self.completed = false
        self.text = text
    }
}
