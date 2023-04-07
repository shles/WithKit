//
//  UIConfiguration.swift
//  WithKit
//
//  Created by Артeмий Шлесберг on 29/04/2020.
//  Copyright © 2019 Shlesberg. All rights reserved.
//

import Foundation
import UIKit

public typealias UIViewParent = UIResponder & NSCoding & UIAppearance & UIAppearanceContainer & UIDynamicItem & UITraitEnvironment & UICoordinateSpace & UIFocusItem & CALayerDelegate

open class UIConfiguration<UIType: UIViewParent> {
    
    private var configurationBlock: (UIType) -> (UIType)
    
    public init(block: @escaping (UIType) -> (UIType)) {
        self.configurationBlock = block
    }
    
    public func configure(view: UIType) -> UIType {
        return configurationBlock(view)
    }
}

public extension UIView {
    func with(configuration: UIConfiguration<UIView>) -> UIView {
        return configuration.configure(view: self)
    }
}

public extension UIButton {
    func with(configuration: UIConfiguration<UIButton>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UILabel {
    func with(configuration: UIConfiguration<UILabel>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UITextView {
    func with(configuration: UIConfiguration<UITextView>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UITextField {
    func with(configuration: UIConfiguration<UITextField>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UIScrollView {
    func with(configuration: UIConfiguration<UIScrollView>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UICollectionView {
    func with(configuration: UIConfiguration<UICollectionView>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UITableView {
    func with(configuration: UIConfiguration<UITableView>) -> Self {
        return configuration.configure(view: self) as! Self
    }
}

public extension UIStackView {
    func with(configuration: UIConfiguration<UIStackView>) -> UIView {
        return configuration.configure(view: self)
    }
}

public extension UIImageView {
    func with(configuration: UIConfiguration<UIImageView>) -> UIView {
        return configuration.configure(view: self)
    }
}
