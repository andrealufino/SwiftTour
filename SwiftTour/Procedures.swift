//
//  Procedures.swift
//  SwiftTour
//
//  Created by Andrea Mario Lufino on 15/07/14.
//  Copyright (c) 2014 Andrea Mario Lufino. All rights reserved.
//

import Foundation

class ProcedureExamples: NSObject {
    
    func logProcedureExamples() {
        
        /* No need to specify type, it is automatically detect based on assigned value */
        var implicitFloat = 70.4;
        /* Here we specify the type */
        var string: String = "Hello, World! \nImplicit float is \(implicitFloat)";
        
        /* Print string to console */
        println(string);
        
        /* If implicitFloat is not equal to 70.0, log string */
        if !(implicitFloat == 70.0) {
            println("implicitFloat isn't equal to 70.4")
        }
        
        /* Create a constant and assign "Insalata" to it */
        let vegetable = "Insalata"
        /* Switch can manage every kind of var, not only integers */
        switch vegetable {
        case "Zucchine":
            println("Zucchine")
        case "Insalata":
            println("Insalata")
        default:
            println("Default")
        }
        
        /* Creates an array of dictionaries */
        let interestingNumbers = [
            "Prime": [2, 3, 5, 7, 11, 13],
            "Fibonacci": [1, 1, 2, 3, 5, 8],
            "Square": [1, 4, 9, 16, 25],
        ]
        
        /* Cycle to get the biggest number */
        var largest = 0
        for (kind, numbers) in interestingNumbers {
            for number in numbers {
                if number > largest {
                    largest = number
                }
            }
        }
        println("The biggest number is \(largest)");
    }
    
}