//
//  ViewController.swift
//  EdgeSwipeInScrollView
//
//  Created by steve on 7/27/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIGestureRecognizerDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let gr = UIScreenEdgePanGestureRecognizer(target: self, action: "handleEdgeSwipe:")
        gr.edges = .Left
        self.view.addGestureRecognizer(gr)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func handleEdgeSwipe(sender: UIScreenEdgePanGestureRecognizer) {
        println("edge swipe")
        
    }
    
    /*
    tweak these delegate methods if you're using edge swipe with scroll view
    because scroll view has its own pan gesture recognizer
    
    func gestureRecognizerShouldBegin(gestureRecognizer: UIGestureRecognizer!) -> Bool {
        return true
    }
    
    func gestureRecognizer(gestureRecognizer: UIGestureRecognizer!, shouldRecognizeSimultaneouslyWithGestureRecognizer otherGestureRecognizer: UIGestureRecognizer!) -> Bool  {
        return true
    }
    
    */
}

