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
        setUpCounterLables()
        setUpLineNumberHolders()
        setUpLabelConstraints()
        setUpChailiftImageView()
    }
    
    // MARK: - UI
    let vertLabel = UILabel()
    let vertCounterLabel = UILabel()
    let milesLabel = UILabel()
    let milesCounterLabel = UILabel()
    let runLabel = UILabel()
    let runCounterLabel = UILabel()
    let logoImageView = UIImageView()
    let chairLift = UIImageView()
    let plusButton = UIButton()
    let runLineHolder = UIView()
    let milesLineHolder = UIView()
    let vertLineHolder = UIView()
    let vertNumber = UILabel()
    let runNumber = UILabel()
    let milesNumber = UILabel()
    
    // MARK: - Button
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
        let plusButtonBottom = NSLayoutConstraint(item: plusButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: self.view.bounds.height * -0.1)
        let plusButtonCenterX = NSLayoutConstraint(item: plusButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        
        self.view.addConstraints([topButtonWidths, plusButtonBottom, plusButtonHeight, plusButtonCenterX])
    }
    
    // MARK: - Action
    
    func plussButtonTapped() {
        
    }
    
    // MARK: - Labels
    
    func setUpLabelConstraints() {
        
        vertLabel.translatesAutoresizingMaskIntoConstraints = false
        vertCounterLabel.translatesAutoresizingMaskIntoConstraints = false
        milesLabel.translatesAutoresizingMaskIntoConstraints = false
        milesCounterLabel.translatesAutoresizingMaskIntoConstraints = false
        runLabel.translatesAutoresizingMaskIntoConstraints = false
        runCounterLabel.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            
            // Vert Text 
            vertLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 26),
            vertLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: self.view.bounds.height * -0.608),
            vertLabel.heightAnchor.constraint(equalToConstant: 30.0),
            vertLabel.widthAnchor.constraint(equalToConstant: 70.0),
            
            // Counter Text
            vertCounterLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            vertCounterLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: self.view.bounds.height * -0.580),
            vertCounterLabel.heightAnchor.constraint(equalToConstant: 29.0),
            vertCounterLabel.widthAnchor.constraint(equalToConstant: 70.0),
           
            // Miles Text
            milesLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 26),
            milesLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: self.view.bounds.height * -0.458),
            milesLabel.heightAnchor.constraint(equalToConstant: 30.0),
            milesLabel.widthAnchor.constraint(equalToConstant: 70.0),
            
            // Counter Text
            milesCounterLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            milesCounterLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: self.view.bounds.height * -0.430),
            milesCounterLabel.heightAnchor.constraint(equalToConstant: 29.0),
            milesCounterLabel.widthAnchor.constraint(equalToConstant: 70.0),
            
            // Run Text
            runLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 26),
            runLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: self.view.bounds.height * -0.308),
            runLabel.heightAnchor.constraint(equalToConstant: 30.0),
            runLabel.widthAnchor.constraint(equalToConstant: 60.0),
            
            // Counter text
            runCounterLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 20),
            runCounterLabel.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.28),
            runCounterLabel.heightAnchor.constraint(equalToConstant: 29.0),
            runCounterLabel.widthAnchor.constraint(equalToConstant: 70.0)
            
            // 
            
            
            ])
    }
    
    
    func setUpCounterLables() {
        
        //        let sanFranFont = "SFDisplay-Thin"
        //
        //        guard let mediumFontSize: UIFont = UIFont(name: "SFDisplay-Thin", size: 30),
        //            let largeFontSize: UIFont = UIFont(name: sanFranFont, size: 40)
        //            else { return }
        // Run text
        //   runLabel.frame = CGRect(x: 44, y: 360, width: 80, height: 30)  // Setting frame
        runLabel.textColor = UIColor.black
        runLabel.textAlignment = NSTextAlignment.left
        runLabel.text = "Run"
        runLabel.font = UIFont(name: LabelKeys.fontFamily, size: 15)
        self.view.addSubview(runLabel)
        
        // Run Counter text
        runCounterLabel.text = "Counter"
        runCounterLabel.font = UIFont(name: "Arial", size: 18)
        self.view.addSubview(runCounterLabel)
        
        // Miles Label text
        milesLabel.text = "Miles"
        milesLabel.textAlignment = NSTextAlignment.left
        milesLabel.font = UIFont(name: LabelKeys.fontFamily, size: 15)
        self.view.addSubview(milesLabel)
        
        // Miles Counter text
        milesCounterLabel.text = "Counter"
        milesCounterLabel.font = UIFont(name: "Arial", size: 18)
        self.view.addSubview(milesCounterLabel)
        
        // Vert Label Text
        vertLabel.text = "Vert"
        vertLabel.font = UIFont(name: "Arial", size: 15)
        self.view.addSubview(vertLabel)
        
        // Vert Counter text
        vertCounterLabel.text = "Counter"
        vertCounterLabel.font = UIFont(name: "Arial", size: 18)
        self.view.addSubview(vertCounterLabel)
        
    }
    
    // MARK: - Line Holders 
    
    func lineNumberConstraints() {
        NSLayoutConstraint.activate([
            runLineHolder.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -20),
            runLineHolder.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.28),
            runLineHolder.heightAnchor.constraint(equalToConstant: 1),
            runLineHolder.widthAnchor.constraint(equalToConstant: 70)
            ])
    }
    func setUpLineNumberHolders() {
        runLineHolder.frame = CGRect(x: 250, y: 475, width: 65, height: 1)
        runLineHolder.backgroundColor = UIColor.gray
        self.view.addSubview(runLineHolder)
        
        milesLineHolder.frame = CGRect(x: 250, y: 375, width: 65, height: 1)
        milesLineHolder.backgroundColor = UIColor.gray
        self.view.addSubview(milesLineHolder)
        
        vertLineHolder.frame = CGRect(x: 250, y: 280, width: 65, height: 1)
        vertLineHolder.backgroundColor = UIColor.gray
        self.view.addSubview(vertLineHolder)
    }
    
    func numberTrackerConstraints() {
        
    }
    
    func setUpNumberTracer() {
    
    }
    
}
