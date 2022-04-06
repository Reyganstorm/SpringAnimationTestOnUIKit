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
    
    func getAnimation() -> Animation {
        Animation(
            preset: Preset.shared.getRandomPreset(),
            curve: Curve.shared.getRandomCurve(),
            force: Double.random(in: 0...2),
            duretion: Double.random(in: 0...2),
            delay: Double.random(in: 0...2))
    }
}


