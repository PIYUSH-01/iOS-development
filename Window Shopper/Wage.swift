//
//  Wage.swift
//  Window-Shopper
//
//  Created by PIYUSH KHURANA on 04/08/19.
//  Copyright © 2019 PIYUSH KHURANA. All rights reserved.
//

import Foundation

class Wage{
    class func getHours(forWage wage:Double, andPrice price: Double) -> Int{
        return Int(ceil(price / wage))
        
    }
}
