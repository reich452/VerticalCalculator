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
        setUpLabelConstraints()
        setUpChailiftImageView()
        lineNumberConstraints()
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
    let clearButton = UIButton()
    let runLineHolder = UIView()
    let milesLineHolder = UIView()
    let vertLineHolder = UIView()
    let vertNumber = UILabel()
    let runNumber = UILabel()
    let milesNumber = UILabel()
    
    // MARK: - Action
    var counter: Int = 0
    
    func plussButtonTapped() {
        counter = counter + 1
        upDateCalculatedResults()
        
    }
    
    func clearButtonTapped() {
        runNumber.text = "\(0)"
        milesNumber.text = "\(0)"
        vertNumber.text = "\(0)"
        counter = 0
    }
    
    func update() {
        
    }
    
    func upDateCalculatedResults() {
        runNumber.text = "\(counter)"
        vertNumber.text = "\(SkiController.shared.calculateTotalVert(run: counter))"
        milesNumber.text = "\(SkiController.shared.calculateTotalMiles(run: counter))"
    }
    
    // MARK: - Button
    func setUpButton() {
        plusButton.setImage(#imageLiteral(resourceName: "PlussButton"), for: .normal)
        // Add targets
        plusButton.addTarget(self, action: #selector(plussButtonTapped), for: .touchUpInside)
        // Add buttons as subviews of the ViewController's view
        self.view.addSubview(plusButton)
        
        clearButton.setTitle("clear", for: .normal)
        clearButton.setTitleColor(UIColor.niceBlue, for: .normal)
        clearButton.addTarget(self, action: #selector(clearButtonTapped), for: .touchUpInside)
        self.view.addSubview(clearButton)
        
        plussButtonTapped()
    
    }
    
    func setUpButtonConstraints() {
        plusButton.translatesAutoresizingMaskIntoConstraints = false
        clearButton.translatesAutoresizingMaskIntoConstraints = false
        
        // Height and Width constraints
        let topButtonWidths = NSLayoutConstraint(item: plusButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.18, constant: 0)
        let plusButtonHeight = NSLayoutConstraint(item: plusButton, attribute: .height, relatedBy: .equal, toItem: plusButton, attribute: .width, multiplier: 1, constant: 0)
        let plusButtonBottom = NSLayoutConstraint(item: plusButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: self.view.bounds.height * -0.11)
        let plusButtonCenterX = NSLayoutConstraint(item: plusButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        
        let clearButtonWidths = NSLayoutConstraint(item: clearButton, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.18, constant: 0)
        let clearButtonHeight = NSLayoutConstraint(item: clearButton, attribute: .height, relatedBy: .equal, toItem: clearButton, attribute: .width, multiplier: 1, constant: 0)
        let clearButtonBottom = NSLayoutConstraint(item: clearButton, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: self.view.bounds.height * -0.018)
        let clearButtonCenterX = NSLayoutConstraint(item: clearButton, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        
        self.view.addConstraints([topButtonWidths, plusButtonBottom, plusButtonHeight, plusButtonCenterX, clearButtonWidths, clearButtonHeight, clearButtonBottom, clearButtonCenterX])
        
    }
    
    // MARK: - Labels
    
    func setUpLabelConstraints() {
        
        vertLabel.translatesAutoresizingMaskIntoConstraints = false
        vertCounterLabel.translatesAutoresizingMaskIntoConstraints = false
        milesLabel.translatesAutoresizingMaskIntoConstraints = false
        milesCounterLabel.translatesAutoresizingMaskIntoConstraints = false
        runLabel.translatesAutoresizingMaskIntoConstraints = false
        runCounterLabel.translatesAutoresizingMaskIntoConstraints = false
        runNumber.translatesAutoresizingMaskIntoConstraints = false
        milesNumber.translatesAutoresizingMaskIntoConstraints = false
        vertNumber.translatesAutoresizingMaskIntoConstraints = false
        runLineHolder.translatesAutoresizingMaskIntoConstraints = false 
        
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
            runCounterLabel.widthAnchor.constraint(equalToConstant: 70.0),
            
            // Run Number
            runNumber.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -21.0),
            runNumber.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.28),
            runNumber.heightAnchor.constraint(equalToConstant: 40.0),
            runNumber.widthAnchor.constraint(equalToConstant: 60.0),
            
            // Miles Number
            milesNumber.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -26.0),
            milesNumber.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.430),
            milesNumber.heightAnchor.constraint(equalToConstant: 40.0),
            milesNumber.widthAnchor.constraint(equalToConstant: 60.0),
            
            vertNumber.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -42.0),
            vertNumber.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.580)
            
            ])
        
        setUpCounterLables()
        setUpLineNumberHolders()
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
        
        runNumber.text = "\(0)"
        runNumber.font = UIFont(name: LabelKeys.fontFamily, size: 22)
        self.view.addSubview(runNumber)
        
        milesNumber.text = "\(0)"
        milesNumber.font = UIFont(name: LabelKeys.fontFamily, size: 22)
        self.view.addSubview(milesNumber)
        
        vertNumber.text = "\(0)"
        vertNumber.font = UIFont(name: LabelKeys.fontFamily, size: 22)
        self.view.addSubview(vertNumber)
    }
    
    // MARK: - Line Holders
    
    func lineNumberConstraints() {
        runLineHolder.translatesAutoresizingMaskIntoConstraints = false
        milesLineHolder.translatesAutoresizingMaskIntoConstraints = false
        vertLineHolder.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            runLineHolder.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -40),
            runLineHolder.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.28),
            runLineHolder.heightAnchor.constraint(equalToConstant: 1),
            runLineHolder.widthAnchor.constraint(equalToConstant: 70),
            
            milesLineHolder.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -40),
            milesLineHolder.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.43),
            milesLineHolder.heightAnchor.constraint(equalToConstant: 1),
            milesLineHolder.widthAnchor.constraint(equalToConstant: 70),
            
            vertLineHolder.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor, constant: -40),
            vertLineHolder.bottomAnchor.constraint(equalTo: view.layoutMarginsGuide.bottomAnchor, constant: view.bounds.height * -0.56),
            vertLineHolder.heightAnchor.constraint(equalToConstant: 1),
            vertLineHolder.widthAnchor.constraint(equalToConstant: 70)
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
    
}
