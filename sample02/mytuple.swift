//
//  mytuple.swift
//  sample02
//
//  Created by sample on 2017/9/11.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func tupletest(){
    let p1 = (10,24) //tuple,資料組
    print(type(of:p1))
    print(p1.0)
    print(p1.1)
    
    let (x1 , y1) = p1
    print(type(of:x1))
    print(x1)
    print(y1)
    
    let p2 = (11,24)
    if p1 > p2 {
        print("OK")
    }else{
        print("XX")
    }
    
    let p3 = (p1, p2)
    print(type(of:p3))
    print(p3.1.1)
    
    let p0 = (10 , "20" , 24.24 , [123,[111,11,444],321])
    print(type(of:p0))
    
    let p4:(x:Double, y:String) = (1, "20")
    print(p4.x)
    print(p4.0)
    
    let p5 = (x: 11, y: "22")
    print(p5.x)
    
    
    
}
