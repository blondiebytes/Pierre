
//
//  SingleLetterView.swift
//  Balloon Game
//
//  Created by Kathryn Hodge on 4/22/15.
//  Copyright (c) 2015 blondiebytes. All rights reserved.
//

import Foundation
import UIKit

class SingleLetterView : UIView {
    var letterStationaryView:UIImageView?
    var textView:UITextView?
    var shouldShow:Bool?
    
    init(letterText:String, screenWidth:CGFloat, screenHeight:CGFloat) {
        // will be random stationary
        
        
        let parentScreenW:CGFloat = screenWidth
        let parentScreenH:CGFloat = screenHeight
        let stationaryX:CGFloat = screenWidth/16
        let stationaryY:CGFloat = screenHeight/7
        let sizeConst:CGFloat = 3/4
        
        let theFrame:CGRect = CGRect (x: stationaryX, y: stationaryY, width: parentScreenW * sizeConst, height: parentScreenH * 2/3)
        
        
        let letterStationary:UIImage = UIImage(named: "stationery")!
        
        
        
        super.init(frame: theFrame)
        
        self.shouldShow = true
        
        // imageView
        self.letterStationaryView = UIImageView(frame: theFrame)
        self.letterStationaryView!.image = letterStationary
        
        
        // attributes
        let font =  UIFont(name: "Arial", size: 12.0)
        let color = UIColor.whiteColor()
        var paragraphStyle = NSMutableParagraphStyle()
        paragraphStyle.lineSpacing = 10
        
        // attributedText
        let attributes = /*font style */ [NSFontAttributeName: font!,
            /*font color */ NSForegroundColorAttributeName: color, /*line spacing*/ NSParagraphStyleAttributeName: paragraphStyle]
        var attributedLetterText:NSMutableAttributedString = NSMutableAttributedString(string: letterText, attributes:attributes)
        
        // textView
        
        self.textView = UITextView(frame: theFrame)
        self.textView!.attributedText = attributedLetterText
        self.textView!.backgroundColor = nil
        self.textView!.editable = false
        self.setGestures()
        
        
        // addThings
        self.addSubview(letterStationaryView!)
        self.addSubview(textView!)
    }
    
    
    func setGestures() {
        let tapInView: UITapGestureRecognizer = UITapGestureRecognizer (target: self, action: Selector("handleTap:"))
        self.textView!.addGestureRecognizer(tapInView)
    }
    
    func handleTap (sender:UITapGestureRecognizer) {
        // if it shouldn't be shown now, then take it awayyy
        if (!self.shouldShow!) {
            self.removeFromSuperview()
            self.shouldShow = true
        }
    }
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
    
}
