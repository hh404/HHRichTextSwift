//
//  NSAttributedStringAdapter.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/11.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

class NSAttributedStringAdapter: RichTextAttributedAdapter {

    override func backgroundColor() -> String?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.backgroundColor
    }
    
    override func textColor() -> String?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.textColor
    }
    
    override func isBold() -> Bool?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        let stype = model.attributes.font.style
        let stypeArray:Array = stype.components(separatedBy: ",")
        if(stypeArray.contains("Bold")){
            return true
        }
        return false
    }
    
    override func isItalic() -> Bool?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        let stype = model.attributes.font.style
        let stypeArray:Array = stype.components(separatedBy: ",")
        if(stypeArray.contains("Italic")){
            return true
        }
        return false
    }
    
    override func fontFamily() -> String?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        let stype = model.attributes.font.family.first
        return stype
    }
    
    override func fontSize() -> Int?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.font.size
    }
    
    override func isUnderline() -> Bool?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.font.isUnderline
    }
    
    override func shadowEnable() -> Bool?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.shadowEnable
    }
    
    override func shadowRadius() -> Float?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.shadowRadius
    }
    
    override func shadowDx() -> Float?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.shadowDx
    }
    
    override func shadowDy() -> Float?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.shadowDy
    }
    
    override func shadowColor() -> String?{
        let model:RichTextInfo.TextAttributes = self.dataModel() as! RichTextInfo.TextAttributes
        return model.attributes.shadowColor
    }
    
}
