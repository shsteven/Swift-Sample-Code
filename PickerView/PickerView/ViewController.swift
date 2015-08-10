//
//  ViewController.swift
//  PickerView
//
//  Created by Steven on 20/7/14.
//  Copyright (c) 2014 Magical Bits. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource,UIPickerViewDelegate {
    
    
    @IBOutlet strong var picker: UIPickerView?
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView!) -> Int  {
        return 1;
    }
    
    func pickerView(pickerView: UIPickerView!, numberOfRowsInComponent component: Int) -> Int {
        return 10;
    }
    
    func pickerView(pickerView: UIPickerView!, titleForRow row: Int, forComponent component: Int) -> String!  {
        return String(row);
    }
    
    func pickerView(pickerView: UIPickerView!, didSelectRow row: Int, inComponent component: Int) {
        println("selected row \(row)")
    }
    
    
    @IBAction func buttonTapped(sender: AnyObject) {
        picker?.selectRow(5, inComponent: 0, animated: true)
    }
    
    
}

