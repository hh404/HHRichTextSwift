
//
//  RichTextInfo.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/8.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit
import HandyJSON

struct RichTextInfo: HandyJSON {
    struct DisplayStyle: HandyJSON{
        enum DisplayStyleType:String,HandyJSONEnum {
            case PAGE_SWITCH
            case SCROLL
        }
        var type:DisplayStyleType = .PAGE_SWITCH
        
        var singleLine:Bool = false
        
        struct PageSwitchAttributes: HandyJSON {
            struct InAnimation: HandyJSON{
                var type:Int = 0
                var duration:Int64 = 0
            }
            var inAnimation:InAnimation = InAnimation()
            var remainDuration:Int64 = 0
        }
        var pageSwitchAttributes:PageSwitchAttributes = PageSwitchAttributes()
        
        struct ScrollAttributes: HandyJSON{
            struct Effects {
                enum Animation: String,HandyJSONEnum{
                    case MARQUEE_LEFT
                    case MARQUEE_UP
                }
                var animation:Animation = .MARQUEE_LEFT
                var speed:Float = 0.0
            }
        }
        var scrollAttributes:ScrollAttributes = ScrollAttributes()
        
        
    }
    var displayStyle:DisplayStyle = DisplayStyle()
    
    struct TextAttributes: HandyJSON{
        var key:Int64 = 0
        
        struct Attributes: HandyJSON{
            var backgroundColor:String = ""
            var shadowColor:String = ""
            var shadowDx:Float = 0
            var shadowDy:Float = 0
            var shadowEnable:Bool = false
            var shadowRadius:Float = 0
            var textColor:String = ""
            
            struct Font: HandyJSON{
                var isUnderline:Bool = false
                var size:Int = 0
                var style:String = ""
                var family:[String] = []
            }
            var font:Font = Font()
            
        }
        var attributes:Attributes = Attributes()
    }
    var textAttributes:[TextAttributes] = []
    var autoPaging:Bool = false
    
    struct Paragraphs: HandyJSON{
        var backgroundColor:String = ""
        enum HorizontalAlignment: String,HandyJSONEnum{
            case LEFT
            case CENTER
            case RIGHT
        }
        var horizontalAlignment:HorizontalAlignment = .LEFT
        var letterSpacing:Float = 0
        var lineSpacing:Float = 0
        enum VerticalAlignment: String, HandyJSONEnum{
            case TOP
            case BOTTOM
            case CENTER
        }
        var verticalAlignment:VerticalAlignment = .TOP
        
        struct Lines: HandyJSON{
            struct Segs: HandyJSON{
                var attributeKey:Int64 = 0
                var content:String = ""
            }
            var segs:[Segs] = []
            
        }
        var lines:[Lines] = []
        
    }
    var paragraphs:[Paragraphs] = []
    
    
}
