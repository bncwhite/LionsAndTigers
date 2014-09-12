//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Bradley White on 9/12/14.
//  Copyright (c) 2014 Code by Brad. All rights reserved.
//

import Foundation

class LionCub: Lion {
    
    var isMale = false
    
    func rubLionCubsBelly() {
        println("lionCub: snuggles happily")
    }
    
    override func roar() {
        super.roar()
        println("lionCub: growl")
    }
    
    override func randomFact() -> String {
        
        var randomFactString:String
        
        if isMale {
            randomFactString = "Its a boy!"
        }else {
            randomFactString = "Its a girl."
        }
        
        return randomFactString
    }
}