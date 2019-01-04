//
//  UIView+Gradient Extension.swift
//  PojectBook take 2
//
//  Created by Summer Crow on 23/04/2018.
//  Copyright © 2018 ghourab. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
func setGradientBackground(colorOne: UIColor, colorTwo: UIColor) {
    let gradientLayer = CAGradientLayer()
    gradientLayer.frame = bounds
    gradientLayer.colors = [colorOne.cgColor, colorTwo.cgColor]
    gradientLayer.locations = [0.0, 1.0]
    gradientLayer.startPoint = CGPoint(x: 0.0, y: 0.7)
    gradientLayer.endPoint = CGPoint(x: 0.0, y: 0.3)
    
    layer.insertSublayer(gradientLayer, at: 0)
    
}
}

func optionButton3D(button1: UIButton, button2: UIButton, button3: UIButton) {
    button1.setGradientBackground(colorOne: UIColor.lightGray, colorTwo: UIColor.white)
    button1.layer.shadowColor = UIColor.black.cgColor
    button1.layer.shadowOpacity = 0.3
    button1.layer.shadowRadius = 1.0
    button1.layer.shadowOffset = CGSize(width: 0, height: 3)
    button2.setGradientBackground(colorOne: UIColor.lightGray, colorTwo: UIColor.white)
    button2.layer.shadowColor = UIColor.black.cgColor
    button2.layer.shadowOpacity = 0.3
    button2.layer.shadowRadius = 1.0
    button2.layer.shadowOffset = CGSize(width: 0, height: 3)
    button3.setGradientBackground(colorOne: UIColor.lightGray, colorTwo: UIColor.white)
    button3.layer.shadowColor = UIColor.black.cgColor
    button3.layer.shadowOpacity = 0.3
    button3.layer.shadowRadius = 1.0
    button3.layer.shadowOffset = CGSize(width: 0, height: 3)
}




