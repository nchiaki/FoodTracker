//
//  RatingControl.swift
//  FoodTracker
//
//  Created by 加藤　康久 on 2020/12/04.
//

import UIKit

class RatingControl: UIStackView {
    //MARK: Properties
    private var ratingButtons = [UIButton]()
    var rating = 0
    
    //MARK: initialize
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    @objc func ratingButtonTapped(button: UIButton) {
        print("👍")
    }
    
    //MARK: Private Methods
    private func setupButtons() {
        for ix in 0..<5 {
            // Create the button
            let button = UIButton()
            if ix % 2 == 0 {
                button.backgroundColor = UIColor.yellow
            } else {
                button.backgroundColor = UIColor.red
            }
            
            // Add constraints
            button.translatesAutoresizingMaskIntoConstraints = false
            button.heightAnchor.constraint(equalToConstant: 44.0).isActive = true
            button.widthAnchor.constraint(equalToConstant: 44.0).isActive = true
            
            // Setup the button action
            button.addTarget(self, action: #selector(RatingControl.ratingButtonTapped(button:)), for: .touchUpInside)
            
            // ADD the button to the stack
            addArrangedSubview(button)

        }
    }
}
