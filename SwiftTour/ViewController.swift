//
//  ViewController.swift
//  SwiftTour
//
//  Created by Andrea Mario Lufino on 14/07/14.
//  Copyright (c) 2014 Andrea Mario Lufino. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
                            
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        println()
        println("PROCEDURES")
        
        var procedureExamples = ProcedureExamples()
        procedureExamples.logProcedureExamples()
        
        println()
        println("FUNCTIONS")
        
        var functionExamples = FunctionExamples()
        functionExamples.logFunctionExamples()
        
        println()
        println("OBJECTS AND CLASSES")
        
        var objectClassExamples = ObjectClassExamples()
        objectClassExamples.logObjectClassesExamples()
        
        println()
        println("ENUM AND STRUCTS")
        
        var _enumExamples = EnumStructExamples()
        _enumExamples.logEnumStructExamples()
        
        println()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}