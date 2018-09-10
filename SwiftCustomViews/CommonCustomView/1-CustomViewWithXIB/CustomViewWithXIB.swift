//
//  CustomViewWithXIB.swift
//  SwiftCustomViews
//
//  Created by 未魔 on 2018/6/15.
//  Copyright © 2018年 未魔. All rights reserved.
//

import UIKit

@IBDesignable
class CustomViewWithXIB: UIView {

    @IBOutlet weak var theImageView: UIImageView!
    
    @IBOutlet weak var theTitleLabel: UILabel!
    
    @IBOutlet weak var theSwitch: UISwitch!
    
    @IBOutlet weak var theButton: UIButton!
    
    @IBInspectable var insImage: UIImage! {
        didSet { theImageView.image = insImage }
    }
    
    @IBInspectable var insTitle: String! {
        didSet { theTitleLabel.text = insTitle }
    }
    
    @IBInspectable var insSwitchON: Bool = true {
        didSet{ theSwitch.isOn = insSwitchON }
    }
    
    @IBInspectable var insButtonTitle: String! {
        didSet { theButton.setTitle(insButtonTitle, for: UIControlState.normal) }
    }
    
    
    @IBInspectable var insBackgroundColor: UIColor = UIColor.clear {
        didSet { self.backgroundColor = insBackgroundColor}
    }


    override init(frame: CGRect) {
        super.init(frame: frame)
        initialization()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        initialization()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        
    }
    
    // MARK: mark
    func initialization() {
        // FIXME: 警告
        // 不要用这个方式，IBDesignable 会出现error
        // let theView = Bundle.main.loadNibNamed("CustomViewWithXIB", owner: self, options: nil)?.first as! UIView
        
        let view = Bundle(for: type(of: self)).loadNibNamed("CustomViewWithXIB", owner: self, options: nil)?.first as! UIView
        view.frame = bounds
        addSubview(view)
        // let bundle = Bundle(for: type(of: self))
        // let nib = UINib(nibName: nibName, bundle: bundle)
        // let view = nib.instantiate(withOwner: self, options: nil)[0] as! UIView
        
    }

}
