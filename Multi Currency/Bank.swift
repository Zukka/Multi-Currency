//
//  Bank.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 26/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Bank {
    
    func reduce(source: Sum, currency: String) -> Money {
        return source.reduce(currency: currency)
    }
}
