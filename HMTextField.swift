//
//  HMTextField.swift
//  Pods
//
//  Created by macbook on 16/01/18.
//
//

import UIKit

@IBDesignable class HMMobilNumberTextField: UITextField {
    
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
            layer.masksToBounds = cornerRadius > 0
        }
    }
    @IBInspectable var borderWidth: CGFloat = 0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }
    @IBInspectable var borderColor: UIColor? {
        didSet {
            layer.borderColor = borderColor?.CGColor
        }
    }
    
    var  maxDigit = 10
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder : aDecoder)
        self.keyboardType = UIKeyboardType.NumberPad
    }
    
    
    override func textFieldDidBeginEditing(_ textField: UITextField) {
        
    }
    
    override func textFieldDidEndEditing(_ textField: UITextField) {
        
    }
    
    
    override func textField(_ textField: UITextField, shouldChangeCharactersInRange range: NSRange, replacementString string: String) -> Bool {
        
        let currentTxtFldText : NSString = textField.text! as NSString
        let stringToCheck : NSString = currentTxtFldText.stringByReplacingCharactersInRange(range, withString: string) as NSString
//            currentTxtFldText.replacingCharacters(in: range, with: string) as NSString
        if stringToCheck.length > maxDigit
        {
            return false
        }
        
        return true
    }
    
    
    
}
