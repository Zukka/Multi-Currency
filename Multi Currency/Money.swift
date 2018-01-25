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
    
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    static func dollar(amount: Int) -> Dollar {
        return Dollar.init(amount: amount)
    }
    
    static func franc(amount: Int) -> Franc {
        return Franc.init(amount: amount)
    }
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func equals(money: Money) -> Bool {
        let newMoney : Money = money
        let firstObjectClassName = String(describing: type(of: self))
        let secondObjectClassName = String(describing: type(of: newMoney))
        return self.amount == newMoney.amount && firstObjectClassName.elementsEqual(secondObjectClassName)
    }
    
    func times(multipler: Int) -> Money {
        let returnedMoneyValue: Money = Money.init(amount: self.amount * multipler)
        return returnedMoneyValue
    }
    
    func currency() -> String {
        return "NIL"
    }
}

