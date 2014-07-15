//
//  Functions.swift
//  SwiftTour
//
//  Created by Andrea Mario Lufino on 15/07/14.
//  Copyright (c) 2014 Andrea Mario Lufino. All rights reserved.
//

import Foundation

class FunctionExamples: NSObject {
    
    func logFunctionExamples() {
        
        println()
        /* Classic function */
        var result = sayHello("Andrea", "Venerdì")
        println("[1]Classic function \n\(result)")
        
        /* This function returns multiple values */
        println("[2]Multi return function \n\(getGasPrices())")
        
        /* This functions take an undefined number of arguments */
        println("[3]Variable number of parameters \n\(sumOf(1, 2, 3, 4, 5))")
        
        /* Nested function (a function into another) */
        println("[4]Nested function \n\(returnFifteen())")
        
        /* First-Class function : a function which returns another function as result */
        var increment = makeIncrementer();
        var increment2 = increment(7)
        println("[5]First-Class function \n\(increment2)")
        
        /* Function which takes another function as argument */
        var numbers = [20, 19, 7, 12]
        println("[6]Function which takes another function as argument \n\(hasAnyMatches(numbers, lessThanTen))")
        
        return
    }
    
    
}

/* FUNCTIONS DECLARATIONS */

/* Take two strings as arguments and return a string */
func sayHello(name: String, day: String) -> String {
    return "Hello \(name), today is \(day)";
}

/* Return multiple values */
func getGasPrices() -> (Double, Double, Double) {
    return (3.59, 3.69, 3.79);
}

/* Take N number of arguments */
func sumOf(numbers: Int...) -> Int {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

/* Nested function. The nested function is allowed to access to his parent vars */
func returnFifteen() -> Int {
    var y = 10
    func add() {
        y += 5
    }
    add()
    return y
}

/* First-Class function : a function which returns another function as result */
func makeIncrementer() -> (Int) -> Int {
    func addOne(number: Int) -> Int {
        return 1 + number
    }
    return addOne
}

/* A function which takes another function as argument */
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool {
    for item in list {
        if condition(item) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool {
    return number < 10
}