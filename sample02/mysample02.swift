//
//  mysample02.swift
//  sample02
//
//  Created by sample on 2017/9/6.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func myary(){
    let a1 = [1,2,3] //自動推斷 Array[Int]
    print(type(of:a1))
    print(a1[2])
    let a2:[Any] = [1,2,"sample"] //:[] => 陣列[型態]
    print(type(of:a2))
    print(a2[2])
    
    //以下為宣告方式,全部一樣的效果
    let ary1:[Int] = []
    let ary2:[Int] = Array()
    let ary3:Array<Int> = []
    let ary4:Array<Int> = Array()
    let ary5 = Array<Int>.init()
    let ary6:[Int] = [1,2,3]
    if ary1.isEmpty {
        print("Empty")
    }else{
        print("not Empty")
    }
    
    if ary6.isEmpty {
        print("Empty")
    }else{
        print("not have \(ary6.count) 個")
//        print("not" + ary6.count + "個")
    }
    
    let ary7 = Array(repeating: 3, count: 10)
    print(ary7.description)
    
    for v in ary7 {
        print(v)
    }
    
    //擲骰子
//    var ary8:[Int] = [0,0,0,0,0,0]
//    var a = 0
//    for _ in 1...100 {
//        
//        a = Int(arc4random_uniform(6))
//        ary8[a] += 1;
//        
//    }
//    for v in ary8 {
//        print(v)
//    }
    var p = Array(repeating: 0, count: 6) //p[0...5] = 0
    var point = -1 //Int
    for _ in 1...100 {
        point = Int(arc4random_uniform(6))
        p[point] += 1 ;
    }
    print(p.description)
    
    for v in p {
        print(v)
    }
    
    for i in 0 ..< p.count {
        print("\(i+1)點共出現\(p[i])次")
    }
    
    for (i,value) in p.enumerated() {
        print("\(i+1)點共出現\(value))次")
    }
    
    print("-------")
    
    print(p[0])
    print(p.first!)
    print(p[5])
    print(p.count-1)
    print(p.last!)
    
    print(p.description)
    p += [320]
    print(p.description)
    p += [222,333,444]
    print(p.description)
    
    p.append(200)
    print(p.description)
    p.append(contentsOf: [222,333,444])
    print(p.description)
    p.insert(300, at: 7)
    print(p.description)
    p.insert(301, at: 0)
    p.insert(302, at: 0)
    p.insert(303, at: 0)
    p.insert(304, at: 0)
    print(p.description)

    p.remove(at: 3)
    print(p.description)

    p.replaceSubrange(1...7, with: [400])
    print(p.description)
    p.replaceSubrange(3...4, with: [444,444])
    print(p.description)
    
    p[3...6] = [333,444,2222,6666]
    print(p.description)

    p.removeSubrange(3...6)
    print(p.description)

    p[3...7] = []
    print(p.description)
    
    p.reverse()
    print(p.description)

    var p2 = p
    print(type(of:p2))
    print(p2.description)
    
    p[2] = 700
    p += [800]
    print(p.description)
    print(p2.description)
    
    
    print("----------")
    
    var i = 100
    for i in 1...10 {
        print(i)
    }
    print(i)
    
    
    
    
    
    
    




}
