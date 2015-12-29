//
//  PushButtonView.swift
//  Flo
//
//  Created by Latiesha Caston on 12/27/15.
//  Copyright © 2015 Latiesha Caston. All rights reserved.
//

import UIKit

@IBDesignable // Live Rendering

class PushButtonView: UIButton {
    
    override func drawRect (rect: CGRect) {
    
    var path = UIBezierPath(ovalInRect: rect)
        
        
        //draw an oval, oval fits in 100x100 button and is therefor a circle
        UIColor .blueColor().setFill()
        path.fill()
        
        
        
        
        
        //Draw the horizontal dash of the plus sign
        // set up width and height for dash
        
        
        let plusHeight: CGFloat = 3.0
        let plusWidth: CGFloat = min(bounds.width, bounds.height) * 0.6
        
        //create the path
        
        var plusPath = UIBezierPath()
        
        //set the paths line width to the height of the stroke
        
        plusPath.lineWidth = plusHeight
        
        //move the initial point of the path to the start of the horizontal stroke
        
        plusPath.moveToPoint(CGPoint(x:bounds.width/2 - plusWidth/2, y:bounds.height/2))
        
        // add a point to the path at the end of the stroke
        plusPath.addLineToPoint(CGPoint(x:bounds.width/2 + plusWidth/2, y:bounds.height/2))
        
        //set the stroke color
        
        UIColor.whiteColor().setStroke()

        //draw the stroke
        
        plusPath.stroke()
    
    
    
    }



}
