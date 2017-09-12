//
//  loop.swift
//  sample02
//
//  Created by sample on 2017/9/12.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func loop(){
    var a = 1
    while a < 10 {
        print(a)
        a += 1
    }
    print(a)
    
    
    var b = 1
    repeat {
        b += 1
    } while b < 10
    print(b)
    
    var i = 1
    var sun = 0
    while i <= 100 {
        sun += i
        i += 1
    }
    print("1+2+....+100=\(sun)")
    
    var poker:[Int] = []
    var isRepeat = false
    var rand = 0
    for i in 0..<10 {
        repeat{
            rand = Int(arc4random_uniform(10))
            isRepeat = false
            for j in 0..<i {
                if rand == poker[j] {
                    isRepeat = true
                    break
                }
            }
        }while isRepeat
         poker += [rand]
    }
    
    print(poker)
    for v in poker {
        print(v)
    }
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
