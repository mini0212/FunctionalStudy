//
//  Currying.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/21.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

class Currying {
    
    static func message(format: String, oldAge: Int) -> String {
        let age = oldAge + 1
        return String(format: format, age)
    }
    
    static func curry(f: @escaping (String, Int) -> String) -> (String) -> (Int) -> String {
        return { (format: String) -> (Int) -> String in
            return { (age: Int) -> String in
                return f(format, age)
            }
        }
    }
    private init() { }
    
    static let shared = Currying()
    
    func add(a: Int, b: Int) -> Int {
        return a + b
    }
    
    func addTwo(a: Int) -> Int {
        return add(a: a, b: 2)
    }
    
    func addThree(a: Int) -> ((Int) -> Int) {
        return { b in
            a + b
        }
    }
    
    // 이거시 커링이다
//    func addFour(a: Int)(b: Int) -> Int {
//        return a + b
//    }
    
    func curry(localAdd: (NSNumber, NSNumber) -> NSNumber) {
        
    }
    
//    func curry2(localAdd: (NSNumber, NSNumber) -> NSNumber) -> ((NSNumber) -> (NSNumber -> NSNumber)) {
//        return { (a: NSNumber) in
//            { (b: NSNumber) in
//              return localAdd(a, b)
//            }
//        }
//    }

}

// 아래의 스니펫은 컴파일되지 않음 -> extension을 제네릭타입으로 만들 수 없기 때문에
//extension Range<A> {
//    func map<B>(transform: A -> B) -> [B]
//}

extension NSNumber {
    class func add(a: NSNumber, b: NSNumber) -> NSNumber {
        return NSNumber(integerLiteral: a.intValue + b.intValue)
    }
}
