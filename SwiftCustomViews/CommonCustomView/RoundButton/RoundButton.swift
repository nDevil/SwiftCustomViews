//
//  RoundButton.swift
//  SwiftCustomViews
//
//  Created by 未魔 on 2018/6/15.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

@IBDesignable
class RoundButton: UIButton {

    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet { self.layer.cornerRadius = cornerRadius }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet { self.layer.borderWidth = borderWidth }
    }
    
    @IBInspectable var borderColor: UIColor = .clear {
        didSet { self.layer.borderColor = borderColor.cgColor }
    }

}
