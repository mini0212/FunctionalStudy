//
//  main.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

// 순수 함수
// 1.
print(PureFunction.addValue(a: 3, b: 5))

// 2.
var c = 10
print(PureFunction.addValue2(a: 3, b: 5, c: c))

// 3.
print(PureFunction.c)
print(PureFunction.addValue3(a: 3, b: 5))
print(PureFunction.c)

// 4.
let objEx = ObjectEx()
print(objEx.num)
print(PureFunction.addValue4(obj: objEx, b: 5))
print(objEx.num)

// 5.
print(objEx.num)
print(PureFunction.addValue5(obj: objEx, b: 5))
print(objEx.num)
