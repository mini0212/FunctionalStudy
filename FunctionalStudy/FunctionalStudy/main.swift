//
//  main.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

// Async Result
//let ar = asyncResult.shared
//
//let num = [1,2,3,4,5,6,7,8,9,10]
////print(ar.f(num))
//ar.asyncF(num) { (result) in
//    print(result)
//}

// currying
//let currying = Currying.shared
//let sum = currying.add(a: 2, b: 3)
//
//let xs = 1...10
//let x = xs.map { currying.add(a: $0, b: 2)}
//let xTwo = xs.map(currying.addTwo(a:))
////print(x)
////print(xTwo)
//
//let xThreeF = currying.addThree(a: 2)
//let xThree = xs.map(xThreeF)
//print(xThree)

//// 합성 함수
//let composited: ((Int) -> String) = FunctionComposition.compositor(increment: FunctionComposition.increment(_:), message: FunctionComposition.message(with:))
//let result: String = composited(26)
//print(result)
//
//let spellOutRandom = FunctionComposition.generateRandomNumber >>> FunctionComposition.spell
//print(spellOutRandom(1))
    

//HighOrderFunction.calculate(.multiple)

// 고차함수
//let numbers = [0, 1, 2, 3, 4]
//
//print(HighOrderFunction.reduceNumbers(numbers))
//
//print(numbers.reduce(10, { (result: Int, currentItem: Int) -> Int in
//    return result + currentIte
//}))
//
//print(numbers.reduce(10) { $0 + $1 })
//
//let texts = ["a", "b", "c", "d"]
//print(texts.reduce("") { $0 + $1 })
//
//let letters = "abracadabra"
//let letterCount = letters.reduce(into: [:]) { counts, letter in
//    counts[letter, default: 0] += 1
//}
//
//print(letterCount)

//let arr = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
//let flatArr = arr.flatMap { $0 }
//print(flatArr)

let a = [1, 2, 3, 4, 5]
let c: (Int) -> Int? = { n in
    if n % 2 == 0 {
        return n * 2
    }
    return nil
}

print(a.map(c))
let b = a.compactMap(c)
print(b)

//print(HighOrderFunction.filterEvens(numbers))
//
//print(numbers.filter({ (num) -> Bool in
//    num % 2 == 0
//}))
//print(numbers.filter({ $0 % 2 == 0 }))
//
//let doubleEven = numbers
//    .map { $0 + 2 }
//    .filter { $0 % 2 == 0 }
//print(doubleEven)
//
//print(numbers.filter(HighOrderFunction.filterEven2))

//print(HighOrderFunction.multiply2(numbers))
//print(numbers.map({ (num) -> Int in
//    num * 2
//}))
//print(numbers.map { $0 * 2 })
//print(numbers.map(HighOrderFunction.multiple))

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

//dispatchMain()  // 커맨드라인에서는 이거 안해주면 dispatch 안돌아간다. 왜?
// 이벤트 런루프(커멘드 라인에서만 사용, 앱에서 사용하면 죽어) - 비동기작업을 할 때 사용하기
