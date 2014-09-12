//
//  Lion.swift
//  LionsAndTigers
//
//  Created by Bradley White on 9/12/14.
//  Copyright (c) 2014 Code by Brad. All rights reserved.
//

import Foundation
import UIKit

class Lion {
    var age = 0
    var isAlphaMale = false
    var image = UIImage(named: "")
    var name = ""
    var subspecies = ""
    
    func roar() {
        println("Lion: Roooaaaarrrr!!!!")
    }
    
    func changeToAlphaMale() {
        isAlphaMale = true
    }
    
    func randomFact() -> String {
        var randomFact:String
        if isAlphaMale {
            randomFact = "Male lions are easy to recognize thanks to their distinctive names. Males with darker names are more likely to attract females"
        } else {
            randomFact = "Female lionesses form the stable social unit and do not tolerate outside females"
        }
        
        return randomFact
    }
}