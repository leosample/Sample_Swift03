//
//  mysample03.swift
//  sample02
//
//  Created by sample on 2017/9/7.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func myary2() {
    var ary1 = [[1,2,3,0],[4,5,6,10,11],[7,8,9]]
    print(type(of:ary1))
    
    print(ary1.description)
    print(ary1[0].description)
    print(ary1.count)
    print(ary1[1].count)
    
    ary1 += [[33,44,55,22,11,66]]
    print(ary1.description)
    
    ary1[1] += [23,13]
    print(ary1.description)
    
    for (ii,vv) in ary1.enumerated(){
        print("\(ii)-------")
        for (i,v) in vv.enumerated(){
            print("\(i) : \(v)")
        }
    }
    
    print("---------------------")
    
    
//    for i in 1...9 {
//        print("\(i)-----")
//        for j in 1...9{
//            print("\(i)x\(j)=\(i*j)")
//        }
//    }
    //
    var newi = 0
    for x in 0...1{
        for j in 1...9{
            for i in 2...5 {
                newi = i + x * 4
                print("\(newi)X\(j)=\(newi*j)",terminator:"\t")
            }
            print()
        }
        print("----------")
    }
    
    
    var ary3 = [1,32,44,26,64,73]
    print(ary3.description)
    ary3.sort()
    print(ary3.description)
    ary3.sort(by: {(a,b)->Bool in return a > b})
    print(ary3.description)

    
    
    
    
    
    
    
    
    
}
