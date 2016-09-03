//
//  NavigationControl.swift
//  CustomizedViewUsingXib
//
//  Created by wangqiang li on 9/3/16.
//  Copyright © 2016 Bruce Li. All rights reserved.
//

import UIKit

class NavigationControl: UIView {
    
    @IBOutlet weak var previousButton: UIButton!
    @IBOutlet weak var nextButton: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.previousButton.backgroundColor = UIColor.blueColor()
        self.nextButton.backgroundColor = UIColor.blueColor()
    }
}

extension NavigationControl {
    
    class func loadFromNib() -> NavigationControl {
        guard let control = NSBundle.mainBundle().loadNibNamed("NavigationControl", owner: self, options: nil).first as? NavigationControl else {
            fatalError("wrong!")
        }
        return control
    }
    
}
