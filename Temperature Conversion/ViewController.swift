//
//  ViewController.swift
//  Temperature Conversion
//
//  Created by Kathryn Tatum on 2/22/20.
//  Copyright © 2020 Kathryn Tatum. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var convertedTempOutput: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    func fahrenheitToCelsius(degrees: Double) -> Double {
        let cTemp =  (degrees - 32) * (5/9)
        return(cTemp)
    }
        
    func celsiusToFahrenheit(degrees: Double) -> Double {
        let fTemp =  (degrees * (9/5)) + 32
        return(fTemp)
    }
    
    func roundValue(degrees: Double) -> Double {
        return degrees.rounded()
    }
    
    
    @IBAction func convertToCelcius(_ sender: UIButton) {
        if let fTemp = Double(enteredTemp.text!) {
            let convertedC = fahrenheitToCelsius(degrees: fTemp)
            let roundedC = roundValue(degrees: convertedC)
            convertedTempOutput.text = ("\(fTemp) in Fahrenheit is equal to \(roundedC) in Celsius")
        } else {
            print("Not a valid temperature: try entering a number")
        }
    }
    
    @IBOutlet weak var enteredTemp: UITextField!
    
    @IBAction func convertToFahrenheit(_ sender: UIButton) {
        if let cTemp = Double(enteredTemp.text!) {
            let convertedF = celsiusToFahrenheit(degrees: cTemp)
            let roundedF = roundValue(degrees: convertedF)
            convertedTempOutput.text = ("\(cTemp) in Celsius is equal to \(roundedF) in Fahrenheit")
        } else {
            print("Not a valid temperature: try entering a number")
        }
    }
    
}
