//
//  RichTextAttributedAdapter.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/11.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit


/// 两种类型的Model,第一种RichTextInfo.TextAttributes,第一种NSDictory用于显示
///这是一个基类
class RichTextAttributedAdapter: NSObject,RichTextAttributedAdapterProtocol {

    fileprivate var data:Any?
    
    init(data: Any) {
        super.init()
        
        self.data = data
    }
    
    func dataModel() -> Any? {
        return self.data
    }
    
    func backgroundColor() -> String?{
        return ""
    }
    
    func textColor() -> String?{
        return ""
    }
    
    func isBold() -> Bool?{
        return false
    }
    
    func isItalic() -> Bool?{
        return false
    }
    
    func fontFamily() -> String?{
        return ""
    }
    
    func fontSize() -> Int?{
        return 10
    }
    
    func isUnderline() -> Bool?{
        return false
    }
    
    func shadowEnable() -> Bool?{
        return false
    }
    
    func shadowRadius() -> Float?{
        return 2
    }
    
    func shadowDx() -> Float?{
        return 2
    }
    
    func shadowDy() -> Float?{
        return 2
    }
    
    func shadowColor() -> String?{
        return ""
    }
    
}
