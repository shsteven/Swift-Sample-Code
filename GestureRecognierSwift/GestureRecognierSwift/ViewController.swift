//
//  ViewController.swift
//  GestureRecognierSwift
//
//  Created by Steven on 26/7/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    
    @IBAction func handlePan(sender: UIPanGestureRecognizer) {
        switch sender.state {
        case .Began:
            println("began")
        case .Changed:
            println("panned")
        case .Ended:
            println("ended")

        default:
            println("other states are unhandled")
        }
    }
    
}

