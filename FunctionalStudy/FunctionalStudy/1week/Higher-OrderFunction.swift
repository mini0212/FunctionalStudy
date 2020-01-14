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
}


