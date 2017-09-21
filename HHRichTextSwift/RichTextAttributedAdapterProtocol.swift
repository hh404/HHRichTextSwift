//
//  RichTextAttributedAdapterProtocol.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/11.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

protocol RichTextAttributedAdapterProtocol {
    
    func backgroundColor() -> String?
    func textColor() -> String?
    func isBold() -> Bool?
    func isItalic() -> Bool?
    func fontFamily() -> String?
    func fontSize() -> Int?
    func isUnderline() -> Bool?
    func shadowEnable() -> Bool?
    func shadowRadius() -> Float?
    func shadowDx() -> Float?
    func shadowDy() -> Float?
    func shadowColor() -> String?
    
}
