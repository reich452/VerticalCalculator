//
//  SkiController.swift
//  VerticalCalculator
//
//  Created by Nick Reichard on 3/28/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation

class SkiController {
    
    static let shared = SkiController() 
    
    // MARK: - Properties
  
    
    func calculateTotalMiles(run: Int) -> Int {
        return run * (Keys.vertical) / Keys.feetInMile
    }
    
    func calculateTotalVert(run: Int) -> Int {
        return run * Keys.vertical
    }
    
}


