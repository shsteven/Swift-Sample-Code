//
//  SubViewController.swift
//  MakingConnections
//
//  Created by steve on 7/27/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {
    
    var parentVC: ViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func doSomething() {
        println("called from parentVC")
    }
    
    
}
