//: Playground - noun: a place where people can play

import UIKit

enum PrinterError: Error {
    case outOfPaper
    case noToner
    case onFire
}

func send(job: Int, toPrinter printerName: String) throws -> String {
    if printerName == "Never Has Toner" {
        throw PrinterError.noToner
    } else if printerName == "Gutenberg" {
        throw PrinterError.onFire
    } else if printerName == "Tokyo" {
        throw PrinterError.outOfPaper
    }
    return "Job sent"
}

do {
    let printerResponse = try send(job: 1040, toPrinter: "Bi Sheng")
    print(printerResponse)
} catch {
    print(error)
}

do {
    let printerResponse = try send(job: 100, toPrinter: "Never Has Toner")
    print(printerResponse)
} catch {
    print(error)
}


// Multiple error handling
do {
    let printerResponse = try send(job: 1440, toPrinter: "Tokyo")
    print(printerResponse)
} catch PrinterError.onFire {
    print("I'll just put this over here, with the res of the fire.")
} catch let printerError as PrinterError {
    print("Printer error: \(printerError)")
} catch {
    print(error)
}

// To use try? to convert the result to an optional
let printerSuccess = try? send(job: 1884, toPrinter: "Mergenthaler")
let printerFailure = try? send(job: 1885, toPrinter: "Never Has Toner")

// Use defer to write a block of code that is executed after all other code in the function, just before the function returns.
var fridgeInOpen = false
let fridgeContent = ["milk", "eggs", "leftovers"]

func fridgeContains(_ food: String) -> Bool {
    fridgeInOpen = true
    defer {
        fridgeInOpen = false
    }
    
    let result = fridgeContent.contains(food)
    return result
}
fridgeContains("milk")
print(fridgeInOpen)










