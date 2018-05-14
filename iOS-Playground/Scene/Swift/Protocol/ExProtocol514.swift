//
//  ExProtocol514.swift
//  iOS-Playground
//
//  Created by HYUNGHUI KIM on 5/14/18.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import Foundation

protocol ExProtocol514 {
    var mustBeSettable: Int { get set }
    var doesNotNeedToBeSettable: Int { get }
}

struct ExStruct514: ExProtocol514 {
    var mustBeSettable: Int
    var doesNotNeedToBeSettable: Int
}

class ExClass514: ExProtocol514 {
    var mustBeSettable: Int = 1
    let doesNotNeedToBeSettable: Int = 2
}

protocol ExProtocol514IncludeStatic {
    static var someTypePropertie: Int { get set }
}

class ExClass514IncludeStatic: ExProtocol514IncludeStatic {
    static var someTypePropertie: Int = 1
}

protocol ExProtocol514Fullnamed {
    var fullName: String { get }
}

class StarShip: ExProtocol514Fullnamed {
    var prefix: String?
    var name: String
    init(name: String, prefix: String? = nil) {
        self.name = name
        self.prefix = prefix
    }
    var fullName: String {
        return (prefix != nil ? prefix! + " " : "") + name
    }
}
