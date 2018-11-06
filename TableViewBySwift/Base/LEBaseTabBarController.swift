//
//  LEBaseTabBarController.swift
//  TableViewBySwift
//
//  Created by lecco on 2018/10/29.
//  Copyright © 2018 lecco. All rights reserved.
//

import UIKit

class LEBaseTabBarController: UITabBarController {
    
    var tab1VC:Tab1ViewController = Tab1ViewController()
    var tab2VC:Tab2ViewController = Tab2ViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let childVCs:Array = [tab1VC,tab2VC]
        let titles:Array = ["tab1","tab2"]
        
        for (index, item) in childVCs.enumerated() {
            item.title = titles[index]
            let navVC = LEBaseNavigationController.init(rootViewController: item)
            self .addChild(navVC)
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
