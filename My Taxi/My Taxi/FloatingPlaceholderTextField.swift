//
//  FloatingPlaceholderTextField.swift
//  My Taxi
//
//  Created by Dhanasekarapandian Srinivasan on 1/8/17.
//  Copyright © 2017 Systameta. All rights reserved.
//

import Foundation
import UIKit



class FloatingPlaceholderTextField: UITextField {
    
    
    var floatingPlaceHolderLabel : UILabel?
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        self.contentVerticalAlignment = .bottom
        let border = CALayer()
        let width = CGFloat(1.0)
        border.borderColor = TITLE_LABEL_B_BORDER.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    override func willMove(toSuperview newSuperview: UIView?) {
        if newSuperview != nil{
        self.addTarget(self, action: #selector(FloatingPlaceholderTextField.updatePlaceHolderLabelRect), for: .editingChanged)
        }else{
            self.removeTarget(self, action: #selector(FloatingPlaceholderTextField.updatePlaceHolderLabelRect), for: .editingChanged)
        }
    }
    
    
    func updatePlaceHolderLabelRect(){
        var pRect = self.placeholderRect(forBounds: self.bounds)
        let fromRect = pRect
        pRect.origin.y = -10
        if floatingPlaceHolderLabel == nil{
            floatingPlaceHolderLabel = UILabel(frame:fromRect)
            self.addSubview(floatingPlaceHolderLabel!)
        }
        floatingPlaceHolderLabel?.text = self.placeholder
        if self.text == ""{
            floatingPlaceHolderLabel?.removeFromSuperview()
            floatingPlaceHolderLabel = nil
        }else{
            UIView.animate(withDuration: 0.3, delay: 0, usingSpringWithDamping: 0.25, initialSpringVelocity: 0.6, options: .curveEaseInOut, animations: {
            self.floatingPlaceHolderLabel?.frame = pRect
                self.floatingPlaceHolderLabel?.textColor = TITLE_LABEL_B_BORDER
            }, completion: nil)
        }
    }
    
}
