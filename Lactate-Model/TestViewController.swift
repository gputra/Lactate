//
//  Test.swift
//  Lactate-Model
//
//  Created by Evgeny Akintev on 28/08/2016.
//  Copyright © 2016 Evgeny Akintev. All rights reserved.
//

import UIKit

class TestViewController: UIViewController {
    
    private var heartRates: Array<Double> = []
    private let tester: TestImmitation = TestImmitation()
    private var currentSpeed: Double = 6.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // tester = TestImmitation()
        heartRates = Array<Double>()
        
        let heartRateTimer = NSTimer.scheduledTimerWithTimeInterval(2.0, target: self, selector: #selector(self.updateHeartRate), userInfo: nil, repeats: true)
        heartRateTimer.fire()
        
        let speedTimer = NSTimer.scheduledTimerWithTimeInterval(15, target: self, selector: #selector(self.updateCurrentSpeed), userInfo: nil, repeats: true)
        speedTimer.fire()
    }
    
    func updateHeartRate() {
        let newValue = tester.getHeartRate(currentSpeed: currentSpeed)
        print("New value: \(newValue) was added to array")
        self.heartRates.append(newValue)
    }

    func updateCurrentSpeed() {
        self.currentSpeed += 0.5
        print("Current speed updated to \(currentSpeed)")
    }
    
}
