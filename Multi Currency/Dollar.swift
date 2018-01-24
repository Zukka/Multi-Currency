//
//  Dollar.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 23/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Dollar {
    
    var amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func times(multipler: Int) -> Dollar {
        let returnedDollarValue: Dollar = Dollar.init(amount: self.amount * multipler)
        return returnedDollarValue
    }
    
    
}
