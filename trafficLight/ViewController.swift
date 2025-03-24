//
//  ViewController.swift
//  trafficLight
//
//  Created by serj on 17.03.2025.
//

import UIKit

enum TrafficLightColor{
    case red, yellow, green
}

final class ViewController: UIViewController {
    
    @IBOutlet weak var redLightView: UIView!
    @IBOutlet weak var yellowLightView: UIView!
    @IBOutlet weak var greenLightView: UIView!
    
    @IBOutlet weak var changeStateButton: UIButton!
    
    private var trafficLightColor = TrafficLightColor.red
    private let onLight = 1.0
    private let offLight = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightView.alpha = offLight
        yellowLightView.alpha = offLight
        greenLightView.alpha = offLight
        
        changeStateButton.layer.cornerRadius = 10
        redLightView.layer.cornerRadius = 50
        yellowLightView.layer.cornerRadius = 50
        greenLightView.layer.cornerRadius = 50
    }
    
    @IBAction func changeStateButtonPressed(_ sender: UIButton) {
        changeStateButton.setTitle("NEXT", for: .normal )
                
        
                switch trafficLightColor {
                case .red:
                    redLightView.alpha = onLight
                    greenLightView.alpha = offLight
                    trafficLightColor = .yellow
                case .yellow:
                    redLightView.alpha = offLight
                    yellowLightView.alpha = onLight
                    trafficLightColor = .green
                case .green:
                    yellowLightView.alpha = offLight
                    greenLightView.alpha = onLight
                    trafficLightColor = .red
                }
    }
    
}

