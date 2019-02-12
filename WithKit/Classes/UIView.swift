//
//  UIView.swift
//  WithKit
//
//  Created by Артмеий Шлесберг on 30/10/2018.
//

import UIKit

extension UIView {
    
    public func addSubviews(_ views: [UIView] ) {
        for view in views {
            addSubview(view)
        }
    }
    
    public  func with(contentMode: UIViewContentMode) -> Self {
        self.contentMode = contentMode
        return self
    }
    
    public  func with(clipsToBounds: Bool) -> Self {
        self.clipsToBounds = clipsToBounds
        return self
    }
    
    public func with(roundedEdges radius: CGFloat) -> Self {
        self.layer.cornerRadius = radius
        return self.with(clipsToBounds: true)
    }
    
    public func with(bottomBorderOfColor color: UIColor) -> Self {
        
        self.layer.backgroundColor = UIColor.white.cgColor
        
        self.layer.masksToBounds = false
        self.layer.shadowColor = color.cgColor
        self.layer.shadowOffset = CGSize(width: 0.0, height: 1.0)
        self.layer.shadowOpacity = 1.0
        self.layer.shadowRadius = 0.0
        
        return self
    }
    
    public  func with(backgroundColor: UIColor) -> Self {
        self.backgroundColor = backgroundColor
        return self
    }
    
    public func with(translatesAutoresizingMaskIntoConstraints: Bool) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = translatesAutoresizingMaskIntoConstraints
        return self
    }
    
    public func with(compressionResistancePriority: UILayoutPriority, for axis: UILayoutConstraintAxis) -> Self {
        self.setContentCompressionResistancePriority(compressionResistancePriority, for: axis)
        return self
    }
    
    public func with(huggingPriority: UILayoutPriority, for axis: UILayoutConstraintAxis) -> Self {
        self.setContentHuggingPriority(huggingPriority, for: axis)
        return self
    }
    
    @discardableResult
    public func withShadow(
        xOffset: CGFloat = 0,
        yOffset: CGFloat = 2,
        radius: CGFloat = 2,
        opacity: Float = 1,
        shadowColor: UIColor = UIColor.black
        ) -> Self {
        self.layer.shadowRadius = radius
        self.layer.shadowOpacity = opacity
        self.layer.shadowOffset = CGSize(width: xOffset, height: yOffset)
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.masksToBounds = false
        self.clipsToBounds = false
        return self
    }
    
    public func withoutShadow() -> Self {
        return withShadow(xOffset: 0, yOffset: 0, radius: 0, opacity: 0)
    }
    
    public func with(borderWidth: CGFloat, borderColor: UIColor) -> Self {
        (self.layer as CALayer).borderWidth = borderWidth
        (self.layer as CALayer).borderColor = borderColor.cgColor
        return self
    }
    
    public func rotatedBy(radians: CGFloat) -> Self {
        self.transform = self.transform.rotated(by: radians)
        return self
    }
    
    public func with(alpha: CGFloat) -> Self {
        self.alpha = alpha
        return self
    }
    
    public func with(isUserInteractionEnabled: Bool) -> Self {
        self.isUserInteractionEnabled = isUserInteractionEnabled
        return self
    }
    
    public func with(isHidden: Bool) -> Self {
        self.isHidden = isHidden
        return self
    }

}

