//
//  HomeController.swift
//  SwiftDev
//
//  Created by ZhuHong on 2018/8/2.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

import UIKit

class HomeController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cell = tableView.cellForRow(at: indexPath)
        if let text = cell?.textLabel?.text {
            print("你点击了 " + text)
        }
    }
}
