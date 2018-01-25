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
        
        XCTAssertEqual(Dollar.init(amount: 10), five.times(multipler: 2))
        XCTAssertEqual(Dollar.init(amount: 15), five.times(multipler: 3))
    }

    func testFrancMoltiplication() {
        
        let five: Franc = Franc.init(amount: 5)
        
        XCTAssertEqual(Franc.init(amount: 10), five.times(multipler: 2))
        XCTAssertEqual(Franc.init(amount: 15), five.times(multipler: 3))
    }

    func testEquality() {
        XCTAssertTrue(Dollar.init(amount: 5).equals(money: Dollar.init(amount: 5)))
        XCTAssertFalse(Dollar.init(amount: 5).equals(money: Dollar.init(amount: 6)))
        XCTAssertTrue(Franc.init(amount: 5).equals(money: Franc.init(amount: 5)))
        XCTAssertFalse(Franc.init(amount: 5).equals(money: Franc.init(amount: 6)))
        XCTAssertFalse(Franc.init(amount: 5).equals(money: Dollar.init(amount: 5)))
    }
}
