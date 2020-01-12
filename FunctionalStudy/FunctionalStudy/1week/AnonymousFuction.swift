//
//  AnonymousFuction.swift
//  FunctionalStudy
//
//  Created by Min on 2020/01/12.
//  Copyright © 2020 Mins. All rights reserved.
//

import Foundation

class AnonymousFuction {
    
    static func isFinish(finish: Bool) {
        print("finish: \(finish)")
    }
    
    static let test = { (isDone: Bool) -> Void in
        print("Done \(isDone)")
    }
    
    static let test2 = { (isDone: Bool) in
        print("Done \(isDone)")
    }
}
