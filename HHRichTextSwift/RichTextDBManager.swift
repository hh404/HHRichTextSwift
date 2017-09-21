//
//  RichTextDBManager.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/11.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class DBSetManager: FMDTManager {

    public var favorites: FMDTContext? {
        get {
            return cache(with: RichTextDBInfo.self, dbPath: "\(NSHomeDirectory())/Documents/favorites.db")
        }
    }

    // MARK: -
    // MARK: Public methods
    func dynamicTable(_ name: String) -> FMDTContext {
        /**
         *  设置将对象映射到不同的数据表
         */
        return cache(with: RichTextDBInfo.self, tableName: name)
    }
}
