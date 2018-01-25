//
//  Franc.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 24/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Franc: Money {
    
    override init(amount: Int, currency: String) {
        super.init(amount: amount, currency: "CHF")
    }
    
}
