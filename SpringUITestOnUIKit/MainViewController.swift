//
//  ViewController.swift
//  SpringUITestOnUIKit
//
//  Created by Руслан Штыбаев on 06.04.2022.
//

import Spring

class MainViewController: UIViewController {

    @IBOutlet var animationView: SpringView!
    
    @IBOutlet var presetTextLabel: UILabel!
    @IBOutlet var curveTextLabel: UILabel!
    @IBOutlet var forceTextLabel: UILabel!
    @IBOutlet var durationTextLabel: UILabel!
    @IBOutlet var delayTextLabel: UILabel!
    
    @IBOutlet var previoslyPresetLabel: UILabel!
    @IBOutlet var previoslyCurveLabel: UILabel!
    
    @IBOutlet var animationStartButton: SpringButton!
    
    var animation = Animation.getAnimation()
    var newAnimation: Animation!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newAnimation = animation
        changeLabels()
    }

    @IBAction func startAimationPressed() {
        animationView.animation = newAnimation.preset
        animationView.curve = newAnimation.curve
        animationView.force = newAnimation.force
        animationView.duration = newAnimation.duretion
        animationView.delay = newAnimation.delay
        
        animationView.animate()
        
        previoslyPresetLabel.text = "Previosly preset was \(newAnimation.preset)"
        previoslyCurveLabel.text = "Previosly curve was \(newAnimation.curve)"
        
        newAnimation = Animation.getAnimation()
        changeLabels()
    }
    
    func changeLabels() {
        presetTextLabel.text = "Preset: \(newAnimation.preset)"
        curveTextLabel.text = "Curve: \(newAnimation.curve)"
        forceTextLabel.text = "Force: \(String(format: "%.2f",newAnimation.force))"
        durationTextLabel.text = "Duration: \(String(format: "%.2f",newAnimation.duretion))"
        delayTextLabel.text = "Delay: \(String(format: "%.2f",newAnimation.delay))"
    }
}

