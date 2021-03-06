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
  
        let five: Money = Money.dollar(amount: 5)
        
        XCTAssertEqual(Money.dollar(amount: 10), five.times(multipler: 2))
        XCTAssertEqual(Money.dollar(amount: 15), five.times(multipler: 3))
    }

    func testFrancMoltiplication() {
        
        let five: Money = Money.franc(amount: 5)
        
        XCTAssertEqual(Money.franc(amount: 10), five.times(multipler: 2))
        XCTAssertEqual(Money.franc(amount: 15), five.times(multipler: 3))
    }

    func testEquality() {
        XCTAssertTrue(Money.dollar(amount: 5).equals(money: Money.dollar(amount: 5)))
        XCTAssertFalse(Money.dollar(amount: 5).equals(money: Money.dollar(amount: 6)))
        XCTAssertTrue(Money.franc(amount: 5).equals(money: Money.franc(amount: 5)))
        XCTAssertFalse(Money.franc(amount: 5).equals(money: Money.franc(amount: 6)))
        XCTAssertFalse(Money.franc(amount: 5).equals(money: Money.dollar(amount: 5)))
    }
    
    func testCurrency() {
        XCTAssertEqual("USD", Money.dollar(amount: 1).currency)
        XCTAssertEqual("CHF", Money.franc(amount: 1).currency)
    }
    
    func testDifferentClassEquality() {
        XCTAssertTrue(Money.franc(amount: 10).equals(money: Franc.init(amount: 10, currency: "CHF")))
    }
    
    func testSimpleAddiction() {
        
        let sum: Sum = Sum.init(augend: Money.dollar(amount: 3), addend: Money.dollar(amount: 4))
        let bank = Bank.init()
        let reduced: Money = bank.reduce(source: sum, currency: CurrencyShort.dollar)
        XCTAssertEqual(Money.dollar(amount: 7), reduced)
    }
    
    func testReduceMoney() {
        let bank = Bank.init()
        let result: Money = bank.reduce(source: Money.dollar(amount: 1), currency: CurrencyShort.dollar)
        XCTAssertEqual(Money.dollar(amount: 1), result)
    }
}
