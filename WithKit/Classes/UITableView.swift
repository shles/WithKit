//
// Created by Артмеий Шлесберг on 16/06/2017.
// Copyright (c) 2017 Jufy. All rights reserved.
//

import Foundation

extension UITableView {

    func dequeueReusableCellOfType<CellType: UITableViewCell>(_ type: CellType.Type, for indexPath: IndexPath) -> CellType {
        let cellName = String(describing: type)
        register(CellType.self, forCellReuseIdentifier: cellName)
        return dequeueReusableCell(withIdentifier: cellName, for: indexPath) as! CellType
    }
    
    func dequeueReusableHeaderOfType<ViewType: UITableViewHeaderFooterView>(_ type: ViewType.Type) -> ViewType {
        let viewName = String(describing: type)
        register(ViewType.self, forHeaderFooterViewReuseIdentifier: viewName)
        return dequeueReusableHeaderFooterView(withIdentifier: viewName) as! ViewType
    }

}
