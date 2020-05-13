//
//  Avatar.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 12.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

 @IBDesignable class Avatar: UIImageView {
    override class var layerClass: AnyClass {
        return CAShapeLayer.self
    }
    var roundedLayer: CAShapeLayer {
        return self.layer as! CAShapeLayer
    }
    
    
    @IBInspectable var color: UIColor = .lightGray {
        didSet { self.updateColors() }
    }
    @IBInspectable var borderWidth: CGFloat = 3 {
        didSet { self.updateWidth() }
    }
    @IBInspectable var radius: CGFloat = 25 {
        didSet { self.udateRadius() }
    }
    
    
    
    func updateColors() {
        self.roundedLayer.borderColor = self.color.cgColor
    }
    func updateWidth() {
        self.roundedLayer.borderWidth = self.borderWidth
    }
    func udateRadius() {
        self.roundedLayer.cornerRadius = self.radius
    }
    
}
