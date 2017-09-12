//
//  switch.swift
//  sample02
//
//  Created by sample on 2017/9/12.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func myswitch(){
    let a = 4
    switch a {
    case 1,2,3,4,5:
        print("A")
        fallthrough
    case 10:
        print("B")
        fallthrough
    case 100:
        print("C")
        fallthrough
    default:
        print("X")
    }
    
    print("------")
    let b = Int(arc4random_uniform(12)+1)
    switch b {
    case 1,3,5,7,8,10,12:
        print("\(b)月有31天")
    case 4,6,9,11:
        print("\(b)月有30天")
    case 2:
        print("\(b)月有28天")
    default:
        print("X")
    }
    print("------")
    
    let c = Int(arc4random_uniform(101))
    print(c)
    switch c {
    case 100:
        print("A+")
    case 90...99:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    case 60..<70:
        print("D")
    case 0..<60:
        print("E")
    default:
        print("F")
    }
    
    print("------")
//    let d = "4"
//    switch d {
//    case 1,2,3:
//        print("A")
//    case "4":
//        print("A")
//    case "4":
//        print("C")
//    default:
//        print("X")
//    }
    
    let d = 4
    var e = 3
    switch d {
    case 1,2,3:
        print("G")
    case e+1:
        print("A")
    case 4:
        print("C")
    default:
        print("X")
    }
    
//    let f = [1,2,3]
//    var g1 = [1] , g2 = [1,2] , g3 = [1,2,3]
//    switch f {
//    case g1:
//        print("G")
//    case g2:
//        print("A")
//    case g3:
//        print("C")
//    default:
//        print("X")
//    }

    let h = (1,"2",3)
    switch h {
//    case (1,2,3,2):
//        print("N")
    case (1,"2",3):
        print("G")
    case (2,"3",4):
        print("A")
//    case (3,4,5):
//        print("C")
    case (1...9,"2",3):
        print("SS")
    case (_,"2",3):
        print("S")
    default:
        print("X")
    }
    
    
    let g = (1,"2",3)
    switch g {
    case (2,"2",3):
        print("G")
    case (2,"3",4):
        print("A")
    case (1...9,"2",3):
        print("SS")
    case (5,"2",3):
        print("S")
    case let (x,y,z):
        print("\(x):\(y):\(z)")
    }
    print("------")

    
    let point = (123,123)
    switch point{
    case let (x,y) where x == y:
        print("A")
    case let (x,y) where x == -y:
        print("B")
    case let (x,y):
        print("C")
        
    }
    
    
    
    
    
    
    
}
