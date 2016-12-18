//
//  MainVC.swift
//  SinaLaunchPageDemo
//
//  Created by 也许、 on 2016/12/18.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class MainVC: UIViewController {

    lazy var label:UILabel = {
        
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 30))
        label.text = "这里是首页"
        return label
    
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor.white
        self.view.addSubview(label)
        
    }

}
