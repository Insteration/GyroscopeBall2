//
//  ViewController.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let ball = Ball(coordinates: view.center)
        view.addSubview(ball)
        
        
    }


}

