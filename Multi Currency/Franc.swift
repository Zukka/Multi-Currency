//
//  Franc.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 24/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Franc: Equatable {
    static func ==(lhs: Franc, rhs: Franc) -> Bool {
        return lhs.amount == rhs.amount
    }
    
    private var amount: Int
    
    init(amount: Int) {
        self.amount = amount
    }
    
    func times(multipler: Int) -> Franc {
        let returnedFrancValue: Franc = Franc.init(amount: self.amount * multipler)
        return returnedFrancValue
    }
    
    func equals(franc: Franc) -> Bool {
        let newFranc : Franc = franc
        return self.amount == newFranc.amount
    }
}
