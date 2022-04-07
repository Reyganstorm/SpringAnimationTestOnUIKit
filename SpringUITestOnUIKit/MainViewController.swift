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
        
        newAnimation = Animation.getAnimation()
        changeLabels()
        title = "Run \(newAnimation.preset)"
    }
    
    func changeLabels() {
        presetTextLabel.text = "Preset: \(newAnimation.preset)"
        curveTextLabel.text = "Curve: \(newAnimation.curve)"
        forceTextLabel.text = "Force: \(newAnimation.force)"
        durationTextLabel.text = "Duration: \(newAnimation.duretion)"
        delayTextLabel.text = "Delay: \(newAnimation.delay)"
    }
}

