//
//  mysample01.swift
//  sample02
//
//  Created by sample on 2017/9/6.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func myint(){
    let Var1 = Int.init(123)
    print(Var1)
    let Var2:Int? = Int.init("sample")
    print(Var2 as Any)
    print(Var2 ?? 0)
    let Var3 = Int.init()
    print(Var3)
    let Var4 = Int.init(123.414)
    print(Var4)
    let Var5 = Int.init("12", radix: 8)
    print(Var5 as Any)
    print(abs(-123))//abs=取絕對值
}
