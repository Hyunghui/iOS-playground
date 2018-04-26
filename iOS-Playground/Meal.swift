//
//  Meal.swift
//  iOS-Playground
//
//  Created by HYUNGHUI KIM on 26/04/2018.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Initialization should fail if there is no name of if the rating is negative
        guard !name.isEmpty else {
            return nil
        }
        
        // The rading must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
