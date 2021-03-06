//
// Created by Timofey on 8/3/17.
// Copyright (c) 2017 Jufy. All rights reserved.
//

import Foundation

extension UIScrollView {

    public func with(refreshControl: UIRefreshControl) -> Self {
        if #available(iOS 10.0, *) {
            self.refreshControl = refreshControl
        } 
        return self
    }

    public func with(bouncing: Bool) -> Self {
        self.bounces = bouncing
        return self
    }

}
