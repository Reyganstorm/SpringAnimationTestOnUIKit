//
//  SpringModel.swift
//  SpringUITestOnUIKit
//
//  Created by Руслан Штыбаев on 06.04.2022.
//

import Foundation

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duretion: Double
    let delay: Double
    
    
}

extension Animation {
    static func getAnimation() -> Animation {
        Animation(
            preset: Preset.init().getRandomPreset(),
            curve: Curve.init().getRandomCurve(),
            force: Double.random(in: 0.0...2.0),
            duretion: Double.random(in: 0.0...2.0),
            delay: Double.random(in: 0.0...2.0))
    }
}


