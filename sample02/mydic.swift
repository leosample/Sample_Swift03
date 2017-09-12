//
//  mydic.swift
//  sample02
//
//  Created by sample on 2017/9/11.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation
// Array => 1. 有順序性(index) 2. 元素可以重複
// Set => 1. 沒有順序性 2. 元素不會重複
// Dictionary => 1. 沒有順序性(key->元素) 2. 元素可以重複

func mydic() {
    let d1:[Int:String] = [:]  // Dictionary [ Int:Strion ]
    print(type(of:d1))
    let d2 = [Int:String]()
    print(type(of:d2))
    let d3:[Int:String] = Dictionary()
    print(type(of:d3))
    
    var d4:[Int:String] = [1:"a", 2:"b" , 11:"a"]
    print(d4.count)
    print(d4)
    print(d4[1]!)
    d4[3] = "abc"
    print(d4.count)
    print(d4)
    d4[3] = "aaa"
    print(d4.count)
    print(d4)
    
    var d5:[String:Int] = [:]
    d5["Weight"] = 80
    d5["age"] = 51
    print(d5)
    
    for (k,v) in d5{
        print("\(k):\(v)")
    }
    
    var line:[[String:Int]] = Array()
    print(type(of:line))
    line += [["x":12,"y":105]]
    line += [["x":13,"y":104]]
    line += [["x":14,"y":103]]
    line += [["x":15,"y":102]]
    line += [["x":16,"y":101]]

    print(line)
    
    for v in line{
        print(v)
    }
    
    for point in line {
        var x = point["x"]
        var y = point["y"]
        print("(\(x!),\(y!))")
    }
    
    for k in d5.keys{
        print(k)
    }
    for v in d5.values{
        print(v)
    }
    
    if let v = d5["age"] {
        print(v)
    }else{
        print("no")
    }
    
    
    let isExist = d5.values.contains(80)
    print(isExist)
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}
