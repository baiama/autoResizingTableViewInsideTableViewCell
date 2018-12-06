//
//  TableViewCustom.swift
//  AutoResizingTableViewInsideTableViewCell
//
//  Created by Baiaman on 06.12.2018.
//  Copyright © 2018 Baiaman. All rights reserved.
//

import UIKit

class TableViewCustom: UITableView {
    
    override var intrinsicContentSize: CGSize {
        self.layoutIfNeeded()
        return self.contentSize
    }
    
    override var contentSize: CGSize {
        didSet{
            self.invalidateIntrinsicContentSize()
        }
    }
}
