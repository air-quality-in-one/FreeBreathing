//
//  TestView.swift
//  FreeBreathing
//
//  Created by Hu, Xinyun on 6/9/15.
//  Copyright (c) 2015 Xu, Lvcai. All rights reserved.
//

import UIKit

@IBDesignable class TestView: UIView {
    
    @IBInspectable var startColor: UIColor = UIColor.redColor()
    @IBInspectable var endColor:UIColor = UIColor.greenColor()
    

    override func drawRect(rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        let colors = [startColor.CGColor, endColor.CGColor]
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colorLocations:[CGFloat] = [0.0, 1.0]
        let gradient = CGGradientCreateWithColors(colorSpace, colors, colorLocations)
        var startPoint = CGPoint.zeroPoint
        var endPoint = CGPoint(x:0, y:self.bounds.height)
        CGContextDrawLinearGradient(context, gradient, startPoint, endPoint, 0)
    }

}
