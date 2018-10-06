//
//  DataTypeController.swift
//  SwiftDev
//
//  Created by ZhuHong on 2018/8/2.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

import UIKit

class DataTypeController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        switch indexPath.row {
        case 0:
            simpleUse()
        case 1:
            structUse()
        case 2:
            enumUse()
        default:
            print("default" + "234")
        }
    }
}

// 简单使用
extension DataTypeController {
    func simpleUse() -> Void {
//        var name = "CoderHG"
//        name.append(", Very GOOD!")
//        print(name)
//
//        var obj = NSObject()
//        print(obj)
//        obj = HGPerson()
//        print(obj)
//
//        let person = obj as! HGPerson
//        print(person);
//        {
//
//        }
        let name = hgFunc(name: "HG")
        print(name)
    }
    
    func hgFunc(name:String) -> String {
        
        return "当前名字: " + name
    }
}

// 定义一个结构体
struct HGStruct {
    var name:String?
    var des:String?
    
    // 自定义构造函数
    init(name:String) {
        self.name = name
        des = "Good!"
    }
    
    // 重写 逐一构造函数
    init(name:String = "", des:String = "") {
        self.name = name
        self.des = des
    }
    
    func desFunc() -> Void {
        
        print(name! + "_" + des!)
    }
    
    // 更新名字
    mutating func update(name:String) -> Void {
        self.name = name
    }
}

extension DataTypeController {
    func structUse() -> Void {
        // 无参构造函数
        var st = HGStruct(des:"哈哈哈哈哈")
        st.desFunc()
        // 逐一构造函数
        st = HGStruct(name: "HG", des: "Good")
        // 调用结构体函数
        st.desFunc()
    }
}

// 枚举定义
enum HGEnum:String {
    case go   = "go_value"
    case back = "back_value"
func enumFunc() {
    print(self.rawValue, "_哈哈哈哈哈")
}
}

extension DataTypeController {
    func enumUse() -> Void {
        //direction(d: HGEnum.go)
        
HGEnum.go.enumFunc()
HGEnum.back.enumFunc()
        
        let p = HGPerson(name: "hg")
        p.sex = "1"
        p.sex = "2"
        
        p.doSomething = ""
        print(p)
    }
    
    func direction(d:HGEnum) -> Void {
        print(HGEnum.go.rawValue)
        print(HGEnum.go)
        
        switch d {
        case .go:
            print("go")
        case .back:
            print("back")
            
        }
    }
}
