//
//  ViewController.swift
//  GyroscopeBall
//
//  Created by Art Karma on 4/26/19.
//  Copyright © 2019 Art Karma. All rights reserved.
//

import UIKit
import CoreMotion

class ViewController: UIViewController, BallBuilder {
    
    private var motionManager = CMMotionManager()
    private var timer: Timer!
    var animator: UIDynamicAnimator!
    var colusion: UICollisionBehavior!
    var ball: UIView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        ball = buildBall(text: "B", point: self.view.center)
        view.addSubview(ball)
        animator = UIDynamicAnimator(referenceView: self.view)
        colusion = UICollisionBehavior(items: [ball])
        colusion.translatesReferenceBoundsIntoBoundary = true
        animator.addBehavior(colusion)
        createTimer()

    }

    fileprivate func createTimer() {
        timer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(startGyroscoper), userInfo: nil, repeats: true)
    }

    @objc func startGyroscoper() {
        
        animator.removeAllBehaviors()
        
        if motionManager.isAccelerometerAvailable {
            motionManager.gyroUpdateInterval = 0.05
            
            motionManager.startAccelerometerUpdates(to: .main) { (data, error) in
                guard let data = data, error == nil else { return }
                self.ball.center.x += CGFloat(data.acceleration.x)
                self.ball.center.y += CGFloat(data.acceleration.y)
            }
        }
        
        animator.addBehavior(colusion)

    }
    
}

