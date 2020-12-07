//
//  Meal.swift
//  FoodTracker
//
//  Created by 加藤　康久 on 2020/12/07.
//

import UIKit

class Meal {
    //MARK: Properties
    var name: String
    var photo: UIImage
    var rating: Int
    
    //MARK: Initialization
    init?(name:String, photo:UIImage?, rating:Int) {

        guard name.isEmpty else {
            return nil
        }
        guard (0 <= rating) && (rating <= 5) else {
            return nil
        }
        
        // Initialize stored Properties
        self.name = name
        self.photo = photo!
        self.rating = rating
        
    }
}

