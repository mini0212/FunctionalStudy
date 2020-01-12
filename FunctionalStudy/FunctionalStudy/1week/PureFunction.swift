//
//  PureFunction.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

class PureFunction {
    
    static var c = 20
    
    static func addValue(_ a: Int, b: Int) -> Int {
        return a + b
    }
    
    static func addValue2(a: Int, b: Int, c: Int) -> Int {
        return a + b + c
    }
    
    static func addValue3(a: Int, b: Int) -> Int {
        c = b
        return a + b
    }
}
