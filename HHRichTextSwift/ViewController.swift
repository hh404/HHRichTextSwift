//
//  ViewController.swift
//  HHRichTextSwift
//
//  Created by huangjianwu on 2017/9/8.
//  Copyright © 2017年 huangjianwu. All rights reserved.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var lb = UILabel()
        lb.textAlignment = .center
        lb.text = "ddfdsf"
        self.view.addSubview(lb)
        lb.snp.makeConstraints { (make) in
            make.left.top.equalTo(100)
            make.size.height.equalTo(40)
            make.right.equalTo(self.view).offset(-20)
        }
        
        ShareDataManager.shared.test = "ssdsd"
        ShareDataManager.shared.test = "abcder"
        
        let factory = RichTextAttributedFactory()
        let r1 = factory.richTextAttribute(1)
        var r2 = factory.richTextAttribute(1)
        r2.attributes.backgroundColor = "sss"
        factory.updateRichTextAttribute(r2)
        var r3 = factory.richTextAttribute(1)
        NSForegroundColorAttributeName
        
        self.test()
        self.view.backgroundColor = UIColor.RC_randomColor()
    }
    
    func test()  {
        var array = [1,2,3]
        if(array.contains(4)){
            print("ddd")
        }
        
        let favorite = RichTextDBInfo()
        //数据库操作
        //创建插入对象
        let icmd = DBSetManager.shared().favorites?.createInsertCommand()
        //添加要插入的对象集合
        icmd?.add(favorite)
        //设置添加操作是否使用replace语句
        icmd?.relpace = true
        //执行插入操作
        icmd?.saveChanges(inBackground: { 
            
        })
        
        var cmd = DBSetManager.shared().favorites?.createSelectCommand()
        cmd?.fetchArray(inBackground: { (array1) in
            print(array1)
        })
        
        var inventory:Inventory = [.Shield,.Sword]
        if inventory.contains(.Sword){
            print("has shield")
        }
    }

    
    /// wode
    func access()  {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.

        //var s = UISlider;
    
    }


}

