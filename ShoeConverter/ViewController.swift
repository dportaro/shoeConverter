//
//  ViewController.swift
//  ShoeConverter
//
//  Created by David Portaro on 28/09/2014.
//  Copyright (c) 2014 David Portaro. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func covertButtonPressed(sender: UIButton)
    {
        let sizeFromTextField = mensShoeSizeTextField.text.toInt()!
        let conversionConstant = 30
        mensConvertedShoeSizeLabel.hidden = false
        mensConvertedShoeSizeLabel.text = "\(sizeFromTextField + 30)" + " in European Shoe Size"
        mensShoeSizeTextField.resignFirstResponder()
   // This will run when convert button is pressed
    }
   
    @IBAction func convertWomensShoeSizeButtonPressed(sender: UIButton)
    
    {
        let sizeFromTextField = Double ((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in Europeon Shoe Size"
        womensShoeSizeTextField.resignFirstResponder()
    // This will run once converted button is pressed
    }
}

