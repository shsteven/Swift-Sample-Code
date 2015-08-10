//
//  ViewController.swift
//  MakingConnections
//
//  Created by steve on 7/27/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var subVC: SubViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        subVC?.doSomething()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!)  {
        let vc = segue.destinationViewController as SubViewController
        
        subVC = vc
        vc.parentVC = self
        
    }
    
}

