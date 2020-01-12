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
    
    static func addValue(a: Int, b: Int) -> Int {
        return a + b
    }
    
    static func addValue2(a: Int, b: Int, c: Int) -> Int {
        return a + b + c
    }
    
    static func addValue3(a: Int, b: Int) -> Int {
        c = b
        return a + b
    }
    
    // inout -> 들어온 인자의 값을 바꾸는 것이므로 명시적으로 표시
    static func addValue4(obj: ObjectEx, b: Int) -> Int {
        obj.num += b
        return obj.num
    }
    
    static func addValue5(obj: ObjectEx, b: Int) -> Int {
        return obj.num + b
    }

}

class ObjectEx {
    var num: Int = 10
}

