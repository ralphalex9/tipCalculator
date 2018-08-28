//
//  ViewController.swift
//  tipCalculator
//
//  Created by Ralph Alex Charlemagne on 8/25/18.
//  Copyright © 2018 Ralph Alex Charlemagne. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var tipTextField: UITextField!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        billTextField.keyboardType = UIKeyboardType.decimalPad
        tipTextField.keyboardType = UIKeyboardType.decimalPad
        
        billTextField.text = "0.0"
        tipTextField.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnResult(_ sender: UIButton) {
        let tip = CGFloat(Float(billTextField.text!)! * Float(tipTextField.text!)!) / 100
        
        let total = CGFloat(Float(tip) + Float(billTextField.text!)!)
        
        resultLabel.text = ("Tip = \(tip) | Total = \(total)")
    }
    
}

