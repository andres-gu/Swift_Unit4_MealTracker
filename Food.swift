//
//  Food.swift
//  MealTracker
//
//  Created by Andres Gutierrez on 1/8/18.
//  Copyright © 2018 Andres Gutierrez. All rights reserved.
//

import Foundation

struct Food {
    var icon: String
    var name: String
    var description: String
    
    init(icon: String, name: String, description: String) {
        self.icon = icon
        self.name = name
        self.description = description
    }
}
