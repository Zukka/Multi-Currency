//
//  Money.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 24/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Money: Equatable {
    
    internal var amount: Int
    internal var currency: String
    
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    static func dollar(amount: Int) -> Dollar {
        return Dollar.init(amount: amount, currency: CurrencyShort.dollar)
    }
    
    static func franc(amount: Int) -> Franc {
        return Franc.init(amount: amount, currency: CurrencyShort.franc)
    }
    
    init(amount: Int, currency: String) {
        self.amount = amount
        self.currency = currency
    }
    
    func equals(money: Money) -> Bool {
        let newMoney : Money = money
        let firstObjectClassName = String(describing: type(of: self))
        let secondObjectClassName = String(describing: type(of: newMoney))
        return self.amount == newMoney.amount && firstObjectClassName.elementsEqual(secondObjectClassName)
    }
    
    func times(multipler: Int) -> Money {
        let returnedMoneyValue: Money = Money.init(amount: self.amount * multipler, currency: currency)
        return returnedMoneyValue
    }
    
}

