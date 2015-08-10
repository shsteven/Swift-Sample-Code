//
//  ViewController.swift
//  DocPreview
//
//  Created by Steven on 9/9/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIDocumentInteractionControllerDelegate {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBOutlet var yoButton: UIButton!

    var sendFile: UIDocumentInteractionController?
    
    @IBAction func buttonTapped(sender: UIButton) {
        let docURL = NSBundle.mainBundle().URLForResource("lorem", withExtension: "txt")
        
        sendFile = UIDocumentInteractionController(URL: docURL!)
        sendFile!.delegate = self
        
        sendFile!.presentOpenInMenuFromRect(sender.frame, inView: self.view, animated: true)

    }
}

