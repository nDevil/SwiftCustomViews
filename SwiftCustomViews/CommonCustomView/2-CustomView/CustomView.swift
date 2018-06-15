//
//  CustomView.swift
//  SwiftCustomViews
//
//  Created by 未魔 on 2018/6/15.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

@IBDesignable
class CustomView: UIView {

    @IBInspectable var borderColor: UIColor = UIColor.clear {
        didSet {
            layer.borderColor = borderColor.cgColor
        }
    }
    
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
//    override func awakeFromNib() {
//        super.awakeFromNib()
//    }
}
