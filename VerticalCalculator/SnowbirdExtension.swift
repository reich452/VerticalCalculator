//
//  SnowbirdExtension.swift
//  VerticalCalculator
//
//  Created by Nick Reichard on 3/30/17.
//  Copyright © 2017 Nick Reichard. All rights reserved.
//

import Foundation
import UIKit

extension SnowbirdViewController  {
    
    func setUpLineNumberHolders() {
        lineHolder.frame = CGRect(x: 200, y: 195, width: 50, height: 1)
        lineHolder.backgroundColor = UIColor.gray
        self.view.addSubview(lineHolder)
    }
    
    
}
