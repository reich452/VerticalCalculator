//
//  SnowbirdExtension.swift
//  VerticalCalculator
//
//  Created by Nick Reichard on 3/30/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

// Images extension

import Foundation
import UIKit

extension SnowbirdViewController  {
    
    func setUpChailiftImageView() {
        chairLift.image = #imageLiteral(resourceName: "chairLift")
        logoImageView.image = #imageLiteral(resourceName: "snowbirdLogo")
        self.view.addSubview(chairLift)
        self.view.addSubview(logoImageView)
        snowbirdImageViewConstraints()
    }
    
    func snowbirdImageViewConstraints() {
        chairLift.translatesAutoresizingMaskIntoConstraints = false
        logoImageView.translatesAutoresizingMaskIntoConstraints = false
        
        let chairLiftImageWiths = NSLayoutConstraint(item: chairLift, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 0)
        let chairLiftImageHeight = NSLayoutConstraint(item: chairLift, attribute: .height, relatedBy: .equal, toItem: chairLift, attribute: .width, multiplier: 0.2433, constant: 0)
        let chairLiftImageTopSpacing = NSLayoutConstraint(item: chairLift, attribute: .top, relatedBy: .equal, toItem: self.topLayoutGuide, attribute: .bottom, multiplier: 1, constant: 0)
        
        let chairLiftImageX = NSLayoutConstraint(item: chairLift, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        
        self.view.addConstraints([chairLiftImageWiths, chairLiftImageHeight, chairLiftImageX, chairLiftImageTopSpacing])
        
        let snowbirdLogoWiths = NSLayoutConstraint(item: logoImageView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 0.30, constant: 0)
        let snowbirdLogoHeight = NSLayoutConstraint(item: logoImageView, attribute: .height, relatedBy: .equal, toItem: logoImageView, attribute: .width, multiplier: 0.60, constant: 0)
        let snowbirdLogoTopSpacing = NSLayoutConstraint(item: logoImageView, attribute: .top, relatedBy: .equal, toItem: chairLift, attribute: .bottom, multiplier: 0.52, constant: 0)

        let snowbirdLogoX = NSLayoutConstraint(item: logoImageView, attribute: .centerX, relatedBy: .equal, toItem: self.view, attribute: .centerX, multiplier: 1, constant: 0)
        
        self.view.addConstraints([snowbirdLogoWiths, snowbirdLogoHeight, snowbirdLogoTopSpacing, snowbirdLogoX])
        
    }
    
}

