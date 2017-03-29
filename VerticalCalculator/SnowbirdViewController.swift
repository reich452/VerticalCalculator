//
//  SnowbirdViewController.swift
//  VerticalCalculator
//
//  Created by Nick Reichard on 3/29/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import UIKit

class SnowbirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpButton()
        setUpButtonConstraints()
    }
    
    // MARK: - Labels
    
    let vertLabel = UILabel()
    let vertCounterLabel = UILabel()
    let milesLabel = UILabel()
    let milesCounterLabel = UILabel()
    let runLabel = UILabel()
    let runCounterLabel = UILabel()
    
    // MARK: - Button
    
    let plusButton = UIButton()
    
    // MARK: - SetUp Methods
    
    
    func setUpButton() {
        
        plusButton.setImage(#imageLiteral(resourceName: "PlussButton"), for: .normal)
        
        // Add targets
        plusButton.addTarget(self, action: #selector(plussButtonTapped), for: .touchUpInside)
        
        
        // Add buttons as subviews of the ViewController's view
        self.view.addSubview(plusButton)
        
    }
    
    func setUpButtonConstraints() {
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width constraints
        let topButtonWidths = NSLayoutConstraint(item: plusButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.18, constant: 0)
        let plusButtonHeight = NSLayoutConstraint(item: plusButton, attribute: .height, relatedBy: .equal, toItem: plusButton, attribute: .width, multiplier: 1, constant: 0)
        let plusButtonBottom = NSLayoutConstraint(item: plusButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: -50)
        let plusButtonCenterX = NSLayoutConstraint(item: plusButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
    
        self.view.addConstraints([topButtonWidths, plusButtonBottom, plusButtonHeight, plusButtonCenterX])
        
    }
    
    func setUpLables() {
       // vertLabel.frame = CGRect(x: 50, y: 80, width: 200, height: 30)
        
        
        
    }
    
    func setUpLabelConstraints() {
        
    }
    
    func setUpImages() {
        
    }
    
    func setUpImageConstraints() {
        
    }
    
    func plussButtonTapped() {
        
    }
    
    
}
