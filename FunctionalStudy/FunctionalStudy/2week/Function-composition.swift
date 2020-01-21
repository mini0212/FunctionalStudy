//
//  Function-composition.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/21.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

class FunctionComposition {
    
    static func increment(_ value: Int) -> Int {
        return value + 1
    }
    
    static func message(with age: Int) -> String {
        return "2020년에 \(age)살이 되었다."
    }
    
    static func compositor(increment: @escaping (Int) -> Int,
                           message: @escaping (Int) -> String) -> ((Int) -> String) {
        return { (age: Int) in  // age -> compositor의 파라메터
            return message(increment(age))
        }
    }
    
    static func generateRandomNumber(max: Int) -> Int {
        return Int(arc4random_uniform(UINT32_MAX))
    }
    
    static func spell(_ number: Int) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .spellOut
        return formatter.string(from: number as NSNumber) ?? ""
    }
    
}

// 향상연산자 
precedencegroup CompositionPrecedence {
    associativity: left
}

infix operator >>>: CompositionPrecedence

func >>> <T, U, V>(lhs: @escaping (T) -> U,
                   rhs: @escaping (U) -> V) -> (T) -> V {
    return { rhs(lhs($0)) }
}
