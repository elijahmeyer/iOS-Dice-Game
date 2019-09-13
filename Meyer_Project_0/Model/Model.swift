//
//  Model.swift
//  Meyer_Project_0
//
//  Created by macuser on 9/13/19.
//  Copyright © 2019 WSU. All rights reserved.
//

import Foundation

class Model {
    public var playerNumber : Int = 0
    public var computerNumber : Int = 0
    public var dieSize : Int = 6
    
    func rollDice() {
        playerNumber = Int.random(in: 0 ..< dieSize) + 1
        computerNumber = Int.random(in: 0 ..< dieSize) + 1
    }
    
    func setDieSize(num: Int) {
        if (num > 0) {
            dieSize = num
        }
    }
}
