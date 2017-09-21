//
//  EnumInfo.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/12.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit

struct Inventory:OptionSet {
    let rawValue:Int
    
    static let None = Inventory(rawValue: 1)
    static let Sword = Inventory(rawValue: 1<<1)
    static let Shield = Inventory(rawValue: 1<<2)
}

//var inventory:Inventory = [.Sword,.Shield]
//if inventory.contains(inventory){
//    print("has shield")
//}

struct FontStyle : OptionSet {
    typealias RawValue = UInt
    private var value: UInt = 0
    init(_ value: UInt) { self.value = value }
    init(rawValue value: UInt) { self.value = value }
    init(nilLiteral: ()) { self.value = 0 }
    static var allZeros: FontStyle { return self.init(0) }
    static func fromMask(raw: UInt) -> FontStyle { return self.init(raw) }
    var rawValue: UInt { return self.value }
    
    static var None: FontStyle { return self.init(0) }
    static var isBold: FontStyle { return FontStyle(1 << 0) }
    static var isUnderLine: FontStyle { return FontStyle(1 << 1) }
    static var isItalic: FontStyle { return FontStyle(1 << 2) }
}
