//
//  Higher-OrderFunction.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

class HighOrderFunction {
    
    static func multiply2(_ numbers: [Int]) -> [Int] {
        var multiplyNumbers = [Int]()
        
        for number in numbers {
            multiplyNumbers.append(number * 2)
        }
        
        return multiplyNumbers
    }
    
    static let multiple: (Int) -> Int = { $0 * 2 }
    
    static func filterEvens(_ numbers: [Int]) -> [Int] {
        var evenNumbers = [Int]()
        
        for number in numbers {
            if number % 2 == 0 { evenNumbers.append(number) }
        }
        
        return evenNumbers
    }
    
    static let filterEven2: (Int) -> Bool = { $0 % 2 == 0 }
    
    
    static func reduceNumbers(_ numbers: [Int]) -> Int {
        var reduceNumbers = 10
        
        for number in numbers {
            reduceNumbers += number
        }
        return reduceNumbers
    }
    
    enum Calculator {
        case nomal
        case multiple
        case plus
        var calc: (Int) -> Void {
            switch self {
            case .nomal: return {print($0)}
            case .multiple: return {print($0 * $0)}
            case .plus: return {print($0 + $0)}
            }
        }
    }

    static func calculate(_ type: Calculator) {
        let calc: Calculator = type
        let numbers: [Int] = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
        numbers.forEach(calc.calc) //enum 내부의 함수를 실행
    }

    
}


