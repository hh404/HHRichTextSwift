//
//  RichTextAttributedFactory.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/11.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class RichTextAttributedFactory: NSObject {

    fileprivate var flyweights = NSMutableDictionary()
    
    override init() {
        super.init()
    }
    
    func richTextAttribute(_ key: Int64) -> RichTextInfo.TextAttributes {
        var textAttribute: RichTextInfo.TextAttributes? = nil
        
        flyweights.enumerateKeysAndObjects({(_ tKey, _ obj, _ stop) -> Void in
            if key == tKey as! Int64 {
                textAttribute = obj as? RichTextInfo.TextAttributes
            }
        })
        if textAttribute == nil {
            textAttribute = RichTextInfo.TextAttributes()
            textAttribute?.key = key
            flyweights[key] = textAttribute
            print("创建")
        }
        return textAttribute!
    }
    
    func updateRichTextAttribute(_ textAttribute: RichTextInfo.TextAttributes) {
        var hasAttribute = false
        flyweights.enumerateKeysAndObjects({ (_ tKey, _ obj, _ stop) -> Void in
            if textAttribute.key == tKey as! Int64 {
                hasAttribute = true
            }
        })
        if hasAttribute {
            flyweights[textAttribute.key] = textAttribute
        }
    }
    
}
