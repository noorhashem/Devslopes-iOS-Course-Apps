//
//  wage.swift
//  window-shopper
//
//  Created by McNoor's  on 10/21/19.
//  Copyright © 2019 McNoor's . All rights reserved.
//

import Foundation

class Wage{
    class func getHours ( forWage wage : Double, forPrice price: Double ) -> Int {
        return (Int(ceil(price / wage)))
    }
}
