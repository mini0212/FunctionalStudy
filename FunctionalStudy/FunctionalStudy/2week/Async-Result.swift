//
//  Async-Result.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/22.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

class asyncResult {
    static let shared = asyncResult()
    private init() { }
    
    func f(_ num: [Int]) -> Int {
        sleep(1)
        let sum = num.reduce(0, +)
        return sum
    }
    
    func asyncF(_ num: [Int], onCompletion: @escaping (Int) -> Void) {
        DispatchQueue.main.async {
            sleep(1)
            let sum = num.reduce(0, +)
            onCompletion(sum)
        }
    }
}
