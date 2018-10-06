//
//  DelegateDetailController.swift
//  SwiftDev
//
//  Created by ZhuHong on 2018/8/3.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

import UIKit


/// MARK 定义一个代理
protocol DetailDelegate: NSObjectProtocol {
    // 从控制器返回 content 内容
    func detail(vc:DelegateDetailController?, content:String?)
}

class DelegateDetailController: UITableViewController {
    // 定义个代理变量
    weak var delegate:DetailDelegate?
    
    var datas:Array<Any>?
        
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "代理详情"
        
        datas = ["123", "321", "345"]
    }
}

extension DelegateDetailController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datas!.count
    }
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "id")
        
        cell.textLabel?.text = datas?[indexPath.row] as? String
        
        return cell;
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cell = tableView.cellForRow(at: indexPath)
        delegate?.detail(vc: self, content: cell?.textLabel?.text)
    }
}
