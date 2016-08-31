//
//  TestImitation.swift
//  Lactate-Model
//
//  Created by Evgeny Akintev on 28/08/2016.
//  Copyright © 2016 Evgeny Akintev. All rights reserved.
//

import Foundation

struct TestImmitation {
    
    static let speedPace: [Double: Double] = [
        6.0: 600,
        6.5: 554,
        7.0: 514,
        7.5: 480,
        8.0: 450,
        8.5: 424,
        9.0: 400,
        9.5: 379,
        10.0: 360,
        10.5: 343,
        11.0: 327,
        11.5: 313,
        12.0: 300,
        12.5: 288,
        13.0: 276,
        13.5: 266,
        14.0: 257,
        14.5: 248,
        15.0: 240,
        15.5: 232,
        16.0: 225
    ]
    
    static let numOfRecordsPerSpeed: [Double: Double] = [
        6.0: 80,
        6.5: 73,
        7.0: 68,
        7.5: 64,
        8.0: 60,
        8.5: 56,
        9.0: 53,
        9.5: 50,
        10.0: 48,
        10.5: 45,
        11.0: 43,
        11.5: 41,
        12.0: 40,
        12.5: 38,
        13.0: 36,
        13.5: 36,
        14.0: 35,
        14.5: 34,
        15.0: 33,
        15.5: 32,
        16.0: 30
    ]
    
    func getHeartRate(currentSpeed speed: Double) -> Double {
        return Double(arc4random_uniform(40) + 110) + speed * 2.0
    }
    
}