//
//  UITextField.swift
//  DiscountMarket
//
//  Created by Артмеий Шлесберг on 01/07/2017.
//  Copyright © 2017 Jufy. All rights reserved.
//

import Foundation
import UIKit

extension UITextField {
    public func with(placeholder: String?) -> Self {
        self.placeholder = placeholder
        return self
    }
    
    public func with(textAlignment alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }
    
    public func with(font: UIFont) -> Self {
        self.font = font
        return self
    }
    
    public func with(keyboard: UIKeyboardType) -> Self {
        self.keyboardType = keyboard
        return self
    }
    
}
