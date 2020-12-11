//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by 加藤　康久 on 2020/12/08.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        print("MealTableViewCell.setSelcted")
        
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
