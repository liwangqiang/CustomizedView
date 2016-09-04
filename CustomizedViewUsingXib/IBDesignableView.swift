//
//  DesignableView.swift
//  CustomizedViewUsingXib
//
//  Created by wangqiang li on 9/3/16.
//  Copyright © 2016 Bruce Li. All rights reserved.
//




/**
    more detail, see:
    https://onevcat.com/2014/10/ib-customize-view/
 **/
import UIKit

@IBDesignable
class DesignableView: UIView {
    
    var preButton: UIButton = UIButton()
    var nextButton: UIButton = UIButton()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let size = bounds.size
        preButton.frame = CGRect(x: 0, y: 0, width: size.width/2, height: size.height)
        nextButton.frame = CGRect(x: size.width/2, y: 0, width: size.width/2, height: size.height)
    }
    
    override func intrinsicContentSize() -> CGSize {
        super.intrinsicContentSize()
        return CGSize(width: 103, height: 48)
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    private func setup() {
        self.addSubview(preButton)
        self.addSubview(nextButton)
        
        configureUI()
    }
    
    private func configureUI() {
        
        // https://onevcat.com/2014/10/ib-customize-view/
        let imageBundle = NSBundle(forClass: self.dynamicType)
        
        preButton.setImage(UIImage(named: "docs-prev-doc", inBundle: imageBundle, compatibleWithTraitCollection: nil)
            , forState: .Normal)
        nextButton.setImage(UIImage(named: "docs-next-doc", inBundle: imageBundle, compatibleWithTraitCollection: nil),  forState: .Normal)
    }
    
}
