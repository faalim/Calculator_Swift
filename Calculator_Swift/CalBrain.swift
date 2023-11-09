//
//  CalBrain.swift
//  Calculator_Swift
//
//  Created by user247300 on 10/5/23.
//

import UIKit

public class CalBrain: NSObject {
    var numBeforeOpr: Double = 0
    var enteredNumber: Double = 0
    var operation = ""

    
    func calculate(opr: String) ->Double?{
        if opr == "+" {
            return enteredNumber + numBeforeOpr
        }else if opr == "-"{
            return  numBeforeOpr - enteredNumber
        }else if opr == "*"{
            return enteredNumber * numBeforeOpr
            
        }else if opr == "/"{
            return numBeforeOpr/enteredNumber
        }
        return 0
    }
}

