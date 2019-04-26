//
//  Ball.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class Ball: UIView {
    var coordinates: CGPoint! // X and Y
    private let side = 50
    
    init(coordinates: CGPoint) {
        super.init(frame: CGRect(x: Int(coordinates.x) - side / 2, y: Int(coordinates.y) - side / 2, width: 50, height: 50))
        self.layer.cornerRadius = CGFloat(side / 2)
        self.backgroundColor = .red
        self.layer.borderColor = UIColor.black.cgColor
        self.coordinates = coordinates
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
