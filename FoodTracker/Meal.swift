//
//  Meal.swift
//  FoodTracker
//
//  Created by Дмитрий Кузьмин on 04.08.2020.
//

import UIKit

class Meal {
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int) {
        
        // Name should not be an empty.
        guard !name.isEmpty else {
            return nil
        }
        
        // Rating should not be negative.
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored properties.
        self.name = name
        self.photo = photo
        self.rating = rating
    }
}
