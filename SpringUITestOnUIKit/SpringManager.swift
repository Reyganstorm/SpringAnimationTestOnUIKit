//
//  SpringManager.swift
//  SpringUITestOnUIKit
//
//  Created by Руслан Штыбаев on 06.04.2022.
//

import Spring

class Preset {
    
    let presets = Spring.AnimationPreset.allCases
    
    func getRandomPreset() -> String {
        var shufledValue = presets.shuffled()
        return shufledValue.removeFirst().rawValue
    }
}

class Curve {
    let curve = Spring.AnimationCurve.allCases
    
   func getRandomCurve() -> String {
        var shufledValue = curve.shuffled()
        return shufledValue.removeFirst().rawValue
    }
}
