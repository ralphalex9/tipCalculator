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
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var tipResultLabel: UILabel!
    @IBOutlet weak var priceResultLabel: UILabel!
    
    var tipDefaultValue = 15
    var billDefaultValue = "0"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //billTextField.text = "0"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculResult(_ sender: UITextField) {
        if billTextField.text != "" {
            calculResult(billValue: billTextField.text!)
        }else{
            priceResultLabel.text = ""
            tipResultLabel.text = ""
        }
    }
    
    @IBAction func segmentedTipControl(_ sender: UISegmentedControl) {
        
        switch tipControl.selectedSegmentIndex {
            case 0:
                tipDefaultValue = 15
                if billTextField.text != "" {
                    calculResult(billValue: billTextField.text!)
                }else{
                    priceResultLabel.text = ""
                    tipResultLabel.text = ""
                }
            case 1:
                tipDefaultValue = 20
                if billTextField.text != "" {
                    calculResult(billValue: billTextField.text!)
                }else{
                    priceResultLabel.text = ""
                    tipResultLabel.text = ""
                }
            case 2:
                tipDefaultValue = 22
                if billTextField.text != "" {
                    calculResult(billValue: billTextField.text!)
                }else{
                    priceResultLabel.text = ""
                    tipResultLabel.text = ""
                }
            default:
                //tipDefaultValue = 15
                if billTextField.text != "" {
                    calculResult(billValue: billTextField.text!)
                }else{
                    priceResultLabel.text = ""
                    tipResultLabel.text = ""
                }
        }
    }
    
    func calculResult(billValue: String) {
        let tip = CGFloat(Float(billValue)! * Float(tipDefaultValue)) / 100
        
        let total = CGFloat(Float(tip) + Float(billValue)!)
        
        priceResultLabel.text = ("Total to bay: $ \(String(format: "%.2f", total))")
        tipResultLabel.text = ("Tip Amount: $ \(tip)")
    }
}

