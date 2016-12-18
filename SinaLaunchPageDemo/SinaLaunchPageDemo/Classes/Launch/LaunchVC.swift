//
//  LaunchVC.swift
//  SinaLaunchPageDemo
//
//  Created by 也许、 on 2016/12/18.
//  Copyright © 2016年 K. All rights reserved.
//

import UIKit

class LaunchVC: UIViewController {
    
    // 头像
    @IBOutlet weak var iconImage: UIImageView!
    
    // 欢迎回来
    @IBOutlet weak var welcomeLabel: UILabel!
    
    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // 给头像切圆角
        self.iconImage.layer.cornerRadius = 60
        self.iconImage.layer.masksToBounds = true
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // 头像下移100像素
        iconImage.transform = CGAffineTransform(translationX: 0, y: 100)
        UIView.animate(withDuration: 1.25, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 3, options: .allowAnimatedContent, animations: {
            
            // 恢复原位置
            self.iconImage.transform = .identity
        
        }, completion: {(flag) in
        
            UIView.animate(withDuration: 1.25, animations: {
                
                // 显示欢迎回来
                self.welcomeLabel.isHidden = false
                
            }, completion: {(flag) in
                
                UIView.animate(withDuration: 1.25, animations: {
                
                    // 视图放大
                    self.view.layer.transform = CATransform3DMakeScale(5, 5, 1)
                    self.view.alpha = 0.7
                    
                }, completion: {(flag) in
                    
                    // 切换根控制器
                    UIApplication.shared.keyWindow?.rootViewController = MainVC()
                    
                })
                
            })
            
        })
  
    }

}
