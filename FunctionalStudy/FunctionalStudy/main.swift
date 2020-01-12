//
//  main.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

let purePlus = PureFunction.addValue(3, b: 5)
print(purePlus)

var c = 10
let notPurePlus = PureFunction.addValue2(a: 3, b: 5, c: c)
print(notPurePlus)

