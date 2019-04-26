//
//  Ball.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

//struct BallModel {
//    var centerBall: CGPoint
//    let side = 50
//}

class Ball: UIView {
    var coordinates: CGPoint // X and Y
    private let side = 50
    
    init(coordinates: CGPoint) {
        self.coordinates = coordinates
        super.init(frame: CGRect(x: Int(coordinates.x) - side / 2, y: Int(coordinates.y) - side / 2, width: 50, height: 50))
        self.layer.cornerRadius = CGFloat(side / 2)
        self.backgroundColor = .red
        self.layer.borderColor = UIColor.black.cgColor
        self.layer.shadowOpacity = 1
        self.layer.shadowOffset = CGSize.zero
        self.layer.shadowRadius = 10
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
