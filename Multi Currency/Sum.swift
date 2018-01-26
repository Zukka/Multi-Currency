//
//  Sum.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 26/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Sum {
    var augend: Money
    var addend: Money
    
    init(augend: Money, addend: Money) {
        self.augend = augend
        self.addend = addend
    }
    
    func reduce(currency: String) -> Money {
        let amount: Int = self.augend.amount + self.addend.amount
        return Money.init(amount: amount, currency: currency)
    }
}
