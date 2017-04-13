//
//  SwiftViewController.swift
//  SwiftInOCDemo
//
//  Created by Jason on 2017/4/13.
//  Copyright © 2017年 Jason. All rights reserved.
//

import UIKit

@objc class SwiftViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.purple
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("svc1 viewWillAppear")
    }
    
    public func myTitle() -> String {
        return "hahaha"
    }
}

@objc class SwiftViewController2: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.green
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("svc2 viewWillAppear")
    }
}
