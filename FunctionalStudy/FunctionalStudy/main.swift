//
//  main.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

// 고차함수
let numbers = [0, 1, 2, 3, 4]
print(HighOrderFunction.multiply2(numbers))
print(numbers.map({ (num) -> Int in
    num * 2
}))
print(numbers.map { $0 * 2 })
print(numbers.map(HighOrderFunction.multiple))

// 익명함수
//AnonymousFuction.isFinish(finish: true)
//AnonymousFuction.test(true)
//AnonymousFuction.test2(false)


//let lucy = { () -> Void in
//    print("득템하기") }
//lucy()

//// 순수 함수
//// 1.
//print(PureFunction.addValue(a: 3, b: 5))
//
//// 2.
//var c = 10
//print(PureFunction.addValue2(a: 3, b: 5, c: c))
//
//// 3.
//print(PureFunction.c)
//print(PureFunction.addValue3(a: 3, b: 5))
//print(PureFunction.c)
//
//// 4.
//let objEx = ObjectEx()
//print(objEx.num)
//print(PureFunction.addValue4(obj: objEx, b: 5))
//print(objEx.num)
//
//// 5.
//print(objEx.num)
//print(PureFunction.addValue5(obj: objEx, b: 5))
//print(objEx.num)
