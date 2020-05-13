//
//  Shadows.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 07.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

@IBDesignable class Shadows: UIView {

    @IBInspectable var Color: UIColor = .black {
          didSet {
              self.updateColors()
          }
      }
      @IBInspectable var Opacity: CGFloat = 1 {
          didSet {
              self.updateOpacity()
          }
      }
      @IBInspectable var Radius: CGFloat = 7 {
          didSet {
              self.udateRadius()
          }
      }
      @IBInspectable var Offset: CGSize = .zero {
          didSet {
              self.updateOffset()
          }
      }
      
      override class var layerClass: AnyClass {
          return CAShapeLayer.self
      }
      var shadowLayer: CAShapeLayer { 
          return self.layer as! CAShapeLayer
      }
      
      var masksToBounds: Bool = false
      
      func updateColors() {
          self.shadowLayer.shadowColor = self.Color.cgColor
      }
      func updateOpacity() {
          self.shadowLayer.shadowOpacity = Float(self.Opacity)
      }
      func udateRadius() {
          self.shadowLayer.shadowRadius = self.Radius
      }
      func updateOffset() {
          self.shadowLayer.shadowOffset = Offset
      }

}
