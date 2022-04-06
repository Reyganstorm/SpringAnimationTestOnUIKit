//
//  SpringManager.swift
//  SpringUITestOnUIKit
//
//  Created by Руслан Штыбаев on 06.04.2022.
//

import Spring

class Preset {
    static let shared = Preset.init()
    
    let presets = Spring.AnimationPreset.self
    
    func getRandomPreset() -> String {
        presets.allCases.randomElement()?.rawValue ?? presets.fadeIn.rawValue
    }
    
    private init() {}
    
}

class Curve {
    static let shared = Curve.init()
    
    let curve = Spring.AnimationCurve.self
    
    func getRandomCurve() -> String {
        curve.allCases.randomElement()?.rawValue ?? curve.easeIn.rawValue
    }
    
    private init() {}
}
