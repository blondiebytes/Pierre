
//
//  UILetterView.swift
//  Balloon Game
//
//  Created by Kathryn Hodge on 4/22/15.
//  Copyright (c) 2015 blondiebytes. All rights reserved.
//

import Foundation
import UIKit

class UILetterView : UIView {
    let letterIcon:UIImage = UIImage(named:"letter")!
    let letterOutline:UIImage = UIImage(named: "b4")!
    var isOpen:Bool!
    
    var letterIconImageView:UIImageView = UIImageView(frame: (CGRect (x: 0, y:0, width:75, height: 25)))
    
    init() {
        super.init(frame: CGRect( x: 0 , y: 0, width: 75, height: 25))
        
        self.isOpen = false
        self.letterIconImageView.image = letterOutline
        addSubview(letterIconImageView)
    }
    
    func makeOpen() {
        self.letterIconImageView.image = letterIcon
        self.isOpen = true
    }
    
    
    
    required init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    
}


