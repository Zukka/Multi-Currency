//
//  Money.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 24/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Money: Equatable {
    
    static func ==(lhs: Money, rhs: Money) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    internal var amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func equals(money: Money) -> Bool {
        let newMoney : Money = money
        return self.amount == newMoney.amount
    }
}
