//
//  BallLabel.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class BallLabel: UILabel {
    var labelText: String
    
    init(_ labelText: String) {
        
        self.labelText = labelText
        
        super.init(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
        
        
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
