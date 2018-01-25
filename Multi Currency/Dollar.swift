//
//  Dollar.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 23/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Dollar: Money {
    
    override init(amount: Int, currency: String) {
        super.init(amount: amount, currency: CurrencyShort.dollar)
    }
    
    
}
