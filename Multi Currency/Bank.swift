//
//  Bank.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 26/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Bank {
    
    func reduce(source: AnyObject, currency: String) -> Money {
        if (source is Sum ) {
            let sourceSum: Sum = source as! Sum
            return sourceSum.reduce(currency: currency)
        } else {
            return source as! Money
        }
    }
}
