//
//  Franc.swift
//  Multi Currency
//
//  Created by Alessandro Bellotti on 24/01/18.
//  Copyright © 2018 Alessandro Bellotti. All rights reserved.
//

import Foundation

class Franc: Money {
    
    func times(multipler: Int) -> Franc {
        let returnedFrancValue: Franc = Franc.init(amount: self.amount * multipler)
        return returnedFrancValue
    }
    
}
