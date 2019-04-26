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
        
        super.init(frame: CGRect(x: 0, y: 0, width: 50, height: 50))
        self.font = .systemFont(ofSize: 40)
        self.textColor = .white
        self.layer.shadowColor = UIColor.black.cgColor
        self.layer.shadowRadius = 1
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize(width: 1, height: 1)
        self.layer.masksToBounds = false
        self.textAlignment = .center
        self.contentMode = .center
        self.text = labelText
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
