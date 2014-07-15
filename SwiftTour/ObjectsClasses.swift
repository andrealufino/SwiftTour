//
//  ObjectsClasses.swift
//  SwiftTour
//
//  Created by Andrea Mario Lufino on 15/07/14.
//  Copyright (c) 2014 Andrea Mario Lufino. All rights reserved.
//

import Foundation

class ObjectClassExamples {
    
    func logObjectClassesExamples() {
        
        /* Creation of shape object setting its property and calling the simpleDescription method */
        var shape = Shape()
        shape.numberOfSides = 7
        var shapeDescription = shape.simpleDescription()
        println("[1]I'm the simpleDescripton method of Shape class \n\(shapeDescription)")
        
        /* Create an object of type NamedShape */
        var namedShape = NamedShape(name: "Shape name")
        var namedShapeDescription = namedShape.simpleDescription()
        println("[2]I'm a NamedShape object with an initializer \n\(namedShapeDescription)")
        
        /* Creation of the object square */
        var square = Square(sideLength: 5.2, name: "Square")
        square.area()
        println("[3]I'm a Square object and I can calculate my area \n\(square.simpleDescription())")
        
        /* Creation of object triangle */
        var triangle = EquilateralTriangle(sideLength: 3.1, name: "Equilateral triangle")
        triangle.perimeter = 9.9
        println("[4]I'm an EquilateralTriangle object and I can calculate my side length based on my perimeter \n\(triangle.perimeter)")
        
        /* Classes with willSet/didSet features */
        var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
        triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
        println("[5]I'm a function with the willSet/didSet feature \n    Triangle side length : \(triangleAndSquare.triangle.sideLength) \n    Square side length : \(triangleAndSquare.square.sideLength)")
        
        /* In class methods we have to specify the parameter name of the method when we call it (except 1st parameter) */
        var counter = Counter()
        counter.incrementBy(2, numberOfTimes: 7)
        println("[6]Show that in methods, we need to specify the name of the parameter (except the 1st)\n\(counter.count)")
    }
}

/* Oggetto Shape */
class Shape {
    /* Property with init */
    var numberOfSides = 0
    /* Method which returns String object */
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

/* NamedShape class */
class NamedShape {
    /* Two property */
    /* Int property */
    var numberOfSides: Int = 0
    /* String property */
    var name: String
    
    /* The initializer, which requires al least the name */
    init(name: String) {
        self.name = name
    }
    
    /* Return a string */
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides"
    }
}

/* Square inherits from NamedShape */
class Square: NamedShape {
    /* New property */
    var sideLength: Double
    
    /* New initializer. It requires sideLength and name as mandatory */
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        /* Calls the initializer of the superclass */
        super.init(name: name)
        numberOfSides = 4
    }
    
    /* Calculate the area */
    func area() ->  Double {
        return sideLength * sideLength
    }
    
    /* Override the simpleDescription function of the superclass */
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

/* Inherits from NamedShape */
class EquilateralTriangle: NamedShape {
    /* New property */
    var sideLength: Double = 0.0
    
    /* Initializer */
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    /* New property with relative getter and setter */
    var perimeter: Double {
    get {
        return 3 * sideLength
    }
    set {
        /* newValue is a implicit value */
        sideLength = newValue / 3
    }
    }
    
    /* Override superclass function */
    override func simpleDescription() -> String {
        return "An equilater triangle with sides of length \(sideLength)"
    }
}

/* If you don't need to init a property, but still need to provide code that is run before and after setting new value, use willSet and didSet. */
/* This class ensure that the side length of the triangle is always the same as the side length of the square */
class TriangleAndSquare {
    var triangle: EquilateralTriangle {
    willSet {
        square.sideLength = newValue.sideLength
    }
    }
    var square: Square {
    willSet {
        triangle.sideLength = newValue.sideLength
    }
    }
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}

/* Methods of classes have a difference from functions. In functions parameter names is used only within the function itself, in methods is used also in the method call */
class Counter {
    var count: Int = 0
    func incrementBy(amount: Int, numberOfTimes times: Int) {
        count += amount * times
    }
}