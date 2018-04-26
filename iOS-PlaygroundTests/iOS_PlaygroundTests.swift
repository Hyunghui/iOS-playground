//
//  iOS_PlaygroundTests.swift
//  iOS-PlaygroundTests
//
//  Created by HYUNGHUI KIM on 19/04/2018.
//  Copyright © 2018 Lobster Team. All rights reserved.
//

import XCTest
@testable import iOS_Playground

// swiftlint:disable:next type_name
class iOS_PlaygroundTests: XCTestCase {
    
    // MARK: Meal class Tests
    
    // Confirm that the Meal initialier returns a Meal object when passed valid parameters.
    func testMealInitializatoinSucceeds() {
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let positiveRatingMeal = Meal.init(name: "positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
    }
    
    func testMealInitializationsFails() {
        // Negative rating
        let negativeRatingMeal = Meal.init(name: "negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty String
        let emptyStringMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyStringMeal)
        
        // Rating exceeds maximum
        let largeRatingMeal = Meal.init(name: "Large", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
    }
}
