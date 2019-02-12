//
//  File.swift
//  DiscountMarket
//
//  Created by Артмеий Шлесберг on 13/06/2017.
//  Copyright © 2017 Jufy. All rights reserved.
//

import Foundation
import UIKit

@available(iOS 9.0, *)
extension UIStackView {
    
    func addArrangedSubviews(_ subviews: [UIView]) {
        for view in subviews {
            addArrangedSubview(view)
        }
    }

    func with(spacing: CGFloat) -> Self {
        self.spacing = spacing
        return self
    }

    func with(distribution: UIStackView.Distribution) -> Self {
        self.distribution = distribution
        return self
    }

    func with(alignment: UIStackView.Alignment) -> Self {
        self.alignment = alignment
        return self
    }

    func with(axis: NSLayoutConstraint.Axis) -> Self {
        self.axis = axis
        return self
    }

    func clear() {
        self.arrangedSubviews.forEach{ $0.removeFromSuperview() }
    }

}
