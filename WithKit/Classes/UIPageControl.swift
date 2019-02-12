//
// Created by Timofey on 12/27/17.
// Copyright (c) 2017 Jufy. All rights reserved.
//

import Foundation

extension UIPageControl {

    func with(pageIndicatorTintColor: UIColor?) -> Self {
        self.pageIndicatorTintColor = pageIndicatorTintColor
        return self
    }

    func with(currentPageIndicatorTintColor: UIColor?) -> Self {
        self.currentPageIndicatorTintColor = currentPageIndicatorTintColor
        return self
    }

}