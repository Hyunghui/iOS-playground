//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("Hello, world!")

// Simple values
var myVariable = 42
myVariable = 50
let myConstant = 44

let implicitInteger = 70
let implicitDouble = 70.7
let explicitDouble: Double = 22
let explicitFloat: Float = 4

let label = "The width is "
let width = 94
let widthLable = label + String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples"
let fruitSummary = "I have \(apples + oranges) pieces of fruits"

let calcText = "HI this is the result \(10.8 / 3.3)"

/// Three double quotation marks(""")
let quotation = """
I said "I have \(apples) apples."
And then I said "I have \(apples + oranges)
            pieces of fruit."
"""
print(quotation)

// Array
var shoppingList = ["catfish", "water", "tulips", "blue paint"]
print(shoppingList)
shoppingList[1] = "bottle of water"
print(shoppingList)

// Dictionary
var occupations = [
    "Malcolm": "Captain",
    "Kaylee": "Mechanic",
]
print(occupations)
occupations["Jayne"] = "PUblic relations"
print(occupations)

// Create empty array, dictionary
let emptyArray = [String]()
let emptyDictionary = [String, String]()
