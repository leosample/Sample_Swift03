//
//  myset.swift
//  sample02
//
//  Created by sample on 2017/9/11.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation
// Array => 1. 有順序性(index) 2. 元素可以重複
// Set => 1. 沒有順序性 2. 元素不會重複
// Dictionary => 1. 沒有順序性(key->元素) 2. 元素可以重複
func myset(){
    var s1 = Set<Int>() // Set, 元素為Int
    print(type(of:s1))
    print(s1.count)
    s1.insert(321)
    s1.insert(123)
    s1.insert(456)
    s1.insert(654)
    print(s1.count)
    s1.insert(321)
    s1.insert(123)
    print(s1.count)
    print(s1.description)
    print(s1)
    
    s1.remove(321)
    print(s1.count)
    print(s1.description)
    print(s1.popFirst()!)
    print(s1)
    
    for v in s1{
        print(v)
    }
    
    // 樂透 1-49 => 6
    var s2 = Set<Int>()
    for _ in 0..<6 {
        s2.insert(Int(arc4random_uniform(50)))
    }
    print(s2.count)
    print(s2)
    
    var lottery = Set<Int>()
    while lottery.count < 6 {
        lottery.insert(Int(arc4random_uniform(49)+1))
    }
    print(lottery)
    for v in lottery.sorted(){
        print(v)
    }
    
    
    var iterator = lottery.makeIterator()
    while let v = iterator.next() {
        print(v)
    }
    
    
    
    
    
    
    
    
}
