//
//  ViewController.swift
//  Calculator_Swift
//
//  Created by user247300 on 10/5/23.
//


//Reg calculator num >opr >num = result
import UIKit

class ViewController: UIViewController {
    //view <-- lable and others will stay constant
    //contraints created
    @IBOutlet weak var displayLabel: UILabel!
    var newNumber = false
    let calculatorBrain = CalBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        newNumber = true
    }
    

    @IBAction func digitsPressed(_ sender: UIButton) {
        if newNumber  == true{
            displayLabel.text = String (sender.tag)
            calculatorBrain.enteredNumber = Double ( displayLabel.text! )!
            newNumber = false
        }else{
            
            displayLabel.text = displayLabel.text! + String(sender.tag)
            calculatorBrain.enteredNumber = Double (displayLabel.text!)!
        }
        
    }
    
    @IBAction func oprPressed(_ sender: UIButton) {
    
            calculatorBrain.numBeforeOpr = Double (displayLabel.text!)!
        calculatorBrain.operation = sender.titleLabel!.text!
        
        displayLabel.text = "0"
        newNumber = true
        }
    
    
    @IBAction func enterPressed(_ sender: Any) {
        displayLabel.text  = String ( calculatorBrain.calculate(opr: ( calculatorBrain.operation))!
        )
    }
    
    @IBAction func clearButton(_ sender: Any) {
        calculatorBrain.numBeforeOpr = 0
        calculatorBrain.enteredNumber = 0
        calculatorBrain.operation = ""
        displayLabel.text = "0"
        newNumber = true
        
    }
    
    
}
