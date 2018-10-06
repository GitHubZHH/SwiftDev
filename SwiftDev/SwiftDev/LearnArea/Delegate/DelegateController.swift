//
//  DelegateController.swift
//  SwiftDev
//
//  Created by ZhuHong on 2018/8/3.
//  Copyright © 2018年 CoderHG. All rights reserved.
//

import UIKit

class DelegateController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated:true)
        
        let vc = DelegateDetailController()
        navigationController?.pushViewController(vc, animated: true)
    }

}
