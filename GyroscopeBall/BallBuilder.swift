//
//  BallBuilder.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

protocol BallBuilder {
    func buildBall(text: String, point: CGPoint) -> UIView
}

extension BallBuilder {
    func buildBall(text: String, point: CGPoint) -> UIView {
        let myBall = Ball(coordinates: point)
        let label = BallLabel(text)
        myBall.addSubview(label)
        return myBall
    }
}
