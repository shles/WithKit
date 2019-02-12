//
//  UIBarButtonItem.swift
//  DiscountMarket
//
//  Created by Артмеий Шлесберг on 03/07/2017.
//  Copyright © 2017 Jufy. All rights reserved.
//

import Foundation
import UIKit

extension UIBarButtonItem {
    
    var frame: CGRect? {
        if let view = value(forKey: "view") as? UIView {
            return view.frame
        } else  { return nil }
    }
}
