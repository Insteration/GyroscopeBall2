//
//  ViewController.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController, BallBuilder {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let ball = buildBall(text: "B", point: self.view.center)
        view.addSubview(ball)
    }


}

