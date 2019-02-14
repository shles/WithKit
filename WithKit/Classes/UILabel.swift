//
// Created by Timofey on 6/28/17.
// Copyright (c) 2017 Jufy. All rights reserved.
//

import Foundation

extension UILabel {

    public func aligned(by alignment: NSTextAlignment) -> Self {
        self.textAlignment = alignment
        return self
    }

    public func with(font: UIFont) -> Self {
        self.font = font
        return self
    }

    public func with(textColor: UIColor) -> Self {
        self.textColor = textColor
        return self
    }

    public func with(text: String?) -> Self {
        self.text = text
        return self
    }
    
    public func with(numberOfLines: Int) -> Self {
        self.numberOfLines = numberOfLines
        return self
    }

}
