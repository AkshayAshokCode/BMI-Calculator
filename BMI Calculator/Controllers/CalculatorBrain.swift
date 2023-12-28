//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Akshay Ashok on 28/12/23.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain{
    var bmiValue : BMI?
    
    mutating func calculateBMI(_ height:Float,_ weight:Float){
        let bmi = weight / pow(height, 2)
        if( bmi < 18.5){
            bmiValue = BMI(value: bmi, advice: "Eat more pies", color: UIColor.blue.withAlphaComponent(0.5))
        }else if bmi < 24.9{
            bmiValue = BMI(value: bmi, advice: "Fit as a fiddle", color: UIColor.green.withAlphaComponent(0.5))
        }else {
            bmiValue = BMI(value: bmi, advice: "Eat less pies", color: UIColor.red.withAlphaComponent(0.5))
        }
        
    }
    
    func getBMIValue() -> String{
        return String(format:"%.1f",bmiValue?.value ?? "0.0")
    }
    
    func getAdvice() -> String{
        return bmiValue?.advice ?? "No advice"
    }
    
    func getColor()-> UIColor{
        return bmiValue?.color ?? UIColor.white
    }
}
