//
//  Meal.swift
//  MealTracker
//
//  Created by Andres Gutierrez on 1/8/18.
//  Copyright © 2018 Andres Gutierrez. All rights reserved.
//

import Foundation

struct Meal {
    var name: String
    var food: [Food]
    
    init(name: String, food: [Food]) {
        self.name = name
        self.food = food
    }
}
