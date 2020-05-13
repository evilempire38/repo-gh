//
//  NewsButtonAnim.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 16.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation
import UIKit
    
extension UIButton {
    func pulse () {
        let pulse = CASpringAnimation(keyPath: "transform.scale")
        pulse.duration = 0.1
        pulse.fromValue = 0.75
        pulse.toValue = 1
        pulse.autoreverses = true
        pulse.repeatCount = 2
        pulse.initialVelocity = 0.9
        pulse.damping = 1
        layer.add(pulse, forKey: nil)
    }
}
