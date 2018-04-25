//
//  L.swift
//  iOS-Playground
//
//  Created by HYUNGHUI KIM on 23/04/2018.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import Foundation

enum LogEvent: String {
    case e = "[⛔️]" // error
    case w = "[⚠️]" // warning
    case i = "[ℹ️]" // info
    case d = "[💬]" // debug
    case v = "[🔬]" // verbose
}

// swiftlint:disable:next type_name
class L {
    static var dateFormat = "yyyy-MM-dd hh:mm:ssSSS"
    static var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = dateFormat
        formatter.locale = Locale.current
        formatter.timeZone = TimeZone.current
        return formatter
    }
    
    private class func sourceFileName(filePath: String) -> String {
        let components = filePath.components(separatedBy: "/")
        return components.isEmpty ? "" : components.last!
    }
    
    private class func log(message: String,
                           event: LogEvent,
                           _ fileName: String,
                           _ line: Int,
                           _ column: Int,
                           _ funcName: String) {
        #if DEBUG
        print("\(Date().toString()) \(event.rawValue)[\(sourceFileName(filePath: fileName))]:L:\(line) C:\(column) \(funcName) -> \(message)")
        #endif
    }
    
    class func d(message: String,
                 fileName: String = #file,
                 line: Int = #line,
                 column: Int = #column,
                 funcName: String = #function) {
        log(message: message, event: .d, fileName, line, column, funcName)
    }
    
    class func v(message: String,
                 fileName: String = #file,
                 line: Int = #line,
                 column: Int = #column,
                 funcName: String = #function) {
        log(message: message, event: .v, fileName, line, column, funcName)
    }
    
    class func i(message: String,
                 fileName: String = #file,
                 line: Int = #line,
                 column: Int = #column,
                 funcName: String = #function) {
        log(message: message, event: .i, fileName, line, column, funcName)
    }
    
    class func w(message: String,
                 fileName: String = #file,
                 line: Int = #line,
                 column: Int = #column,
                 funcName: String = #function) {
        log(message: message, event: .w, fileName, line, column, funcName)
    }
    
    class func e(message: String,
                 fileName: String = #file,
                 line: Int = #line,
                 column: Int = #column,
                 funcName: String = #function) {
        log(message: message, event: .e, fileName, line, column, funcName)
    }
}

extension Date {
    func toString() -> String {
        return L.dateFormatter.string(from: self as Date)
    }
}
