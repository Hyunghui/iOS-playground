//: Playground - noun: a place where people can play

import UIKit

// Class
class Shape {
    var numberOfSides = 0
    func simpleDescription() -> String {
        return "A Shape with \(numberOfSides)"
    }
    let letNumber = 1
    func simpleDiscriptoinWithLet() -> String {
        return "A Shape with \(letNumber)"
    }
}

let myShape: Shape = Shape()
myShape.simpleDescription()
myShape.numberOfSides = 7
myShape.simpleDescription()
myShape.simpleDiscriptoinWithLet()

// Class with init
class NamedShape {
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A Shape name: \(name) with \(numberOfSides) sides."
    }
}

let namedShape = NamedShape(name: "Hi")
namedShape.simpleDescription()

// Subclass
class Square: NamedShape {
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)"
    }
}

let test = Square(sideLength: 5.2, name: "My test Square")
test.area()
test.simpleDescription()

class Circle: NamedShape {
    var radius: Double = 0
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return radius/2 * radius/2 * 3.14
    }
    
    override func simpleDescription() -> String {
        return "This is Circle simpleDescription name: \(name) radius: \(radius)"
    }
}
let testCircle = Circle(radius: 4.5, name: "MyCircle")
testCircle.area()
testCircle.simpleDescription()

// Class properties can have a getter and a setter.
class EquilateralTriangle: NamedShape {
    var sideLength: Double = 0.0
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get {
            return 3.0 * sideLength
        }
        
        set {
            sideLength = newValue / 3.0
        }
    }
    
    override func simpleDescription() -> String {
        return "An equilateral triangle with sides of length \(sideLength)"
    }
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "A triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)

// willSet and didSet
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

var triangleAndSquare = TriangleAndSquare(size: 10, name: "another test shape")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)
triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

// optional
let optionalSquare: Square? = Square(sideLength: 2.5, name: "optional square")
let sideLength = optionalSquare?.sideLength












