//
//  Multi_CurrencyTests.swift
//  Multi CurrencyTests
//
//  Created by Alessandro Bellotti on 23/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import XCTest
@testable import Multi_Currency

class Multi_CurrencyTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
    func testMoltiplication() {
        
        let five: Dollar = Dollar.init(amount: 5)
        five.amount = 5
        five.times(multipler: 2)
        
        assert(10 == five.amount)
    }

}
