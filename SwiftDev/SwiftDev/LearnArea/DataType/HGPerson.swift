//
//  HGPerson.swift
//  SwiftDev
//
//  Created by ZhuHong on 2018/8/3.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

import UIKit

class HGPerson {
    var name:String?
    // 构造函数
    init(name:String) {
        self.name = name
        self.sex = ""
    }
    
    var sex:String = "" {
        willSet(newValue) {
            print("当前的值 = " + self.sex + ",新值 = " + newValue)
        }
        didSet(oldValue) {
            print("当前的值 = " + self.sex + ",之前的值 = " + oldValue)
        }
    }
    
    var doSomething:String {
        set {
            // setter
            sex = "3"
            sex = "4"
        }
        
        get {
            // getter
            return ""
        }
    }
    
}

class nnnn: NSObject {
    func test() {
        let p = HGPerson(name: "uuu")
        print(p)
    }
}
