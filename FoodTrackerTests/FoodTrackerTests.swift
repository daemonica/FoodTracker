//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Дмитрий Кузьмин on 26.07.2020.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {

    //MARK: Meal class tests
    
    // Confirm that the Meal initializer returns a Meal object when passed valid parameters.
    func testMealInitializationSucceeds() {
        // Zero rating.
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating.
        let positiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(positiveRatingMeal)
        
    }
    
    // Confirm that the Meal initialier returns nil when passed a negative rating or an empty name.
    func testMealInitializationFails() {
        // Negative rating.
        let negativeRatingMeal = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeRatingMeal)
        
        // Empty name.
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 0)
        XCTAssertNil(emptyNameMeal)
        
        // Rating exceeds maximum.
        let exceededRatingMeal = Meal.init(name: "Exceeded", photo: nil, rating: 6)
        XCTAssertNil(exceededRatingMeal)
    }
}
