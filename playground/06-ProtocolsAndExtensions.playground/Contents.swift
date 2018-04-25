//: Playground - noun: a place where people can play

import UIKit

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}

class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    func adjust() {
        simpleDescription += " Now 100% adjusted"
    }
    func testFunc() {
        
    }
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription

struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A very simple structure."
    
    mutating func adjust() {
        simpleDescription += " (adjusted)"
    }
}

var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription

// Enums must not contain stored properties
//enum SimpleEnum: ExampleProtocol {
//    var simpleDescription: String = "A very simple enumeration."
//
//    func adjust() {
//        simpleDescription += " (adjusted)"
//    }
//}

// Extension
extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
}
print(7.simpleDescription)
var testInt: Int = 1
print(testInt.simpleDescription)
testInt.adjust()
print(testInt.simpleDescription)

protocol DoubleProtocol {
    var absoluteValue: Double { get }
}
extension Double: DoubleProtocol {
    var absoluteValue: Double {
        return abs(self)
    }
}
var testDouble: Double = -9
print(testDouble.absoluteValue)

let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
