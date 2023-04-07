//
// Created by Timofey on 12/27/17.
// Copyright (c) 2017 Jufy. All rights reserved.
//

import Foundation

extension UIPageControl {

    public func with(pageIndicatorTintColor: UIColor?) -> Self {
        self.pageIndicatorTintColor = pageIndicatorTintColor
        return self
    }

    public func with(currentPageIndicatorTintColor: UIColor?) -> Self {
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        return self
    }

}
