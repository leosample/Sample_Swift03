//
//  mystr.swift
//  sample02
//
//  Created by sample on 2017/9/8.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func mystr(){
    var name = "sample"
    print(type(of:name))
    name += "是我"
    print(name)
    
    for c in name.characters{
        print(c)
    }
    print(name.unicodeScalars.count)
    print(name.utf8.count)
    print(name.utf16.count)
    
    let chars = Array(name.characters)
    print(type(of:chars))
    print(chars.count)
    print(chars[chars.count-1])
    
    let newname = String(chars)
    print(type(of:newname))
    print(newname)
    
    let cs1 = ["A","B","C","D"]
    print(type(of:cs1))
    let cs2:[Character] = ["A","B","C","D"]
    print(type(of:cs2))
    
//    let ncs1 = String(cs1)
//    print(type(of:ncs1))
    let ncs2 = String(cs2)
    print(type(of:ncs2))
    
    var letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
    print(letters)
    print(letters.unicodeScalars.count)
    let from = letters.index(letters.startIndex,offsetBy:2)
    let to = letters.index(letters.startIndex,offsetBy:5)
    let range = from..<to
    print(type(of:range))
    print(letters.substring(with: range))
    
    
//    print(mysubstr(source: letters, from: 3, to: 26))
    print(letters.substring(with: getStringRange(source: letters, from: 3, to: 26)))
    
    print(mysubstr2(source: letters, from: 3, to: 26))
    
    let Rrange = getStringRange(source: letters, from: 2, to: 5)
    letters.replaceSubrange(Rrange, with: "23456")
    print(letters)
    
    let r2 = getStringRange(source: letters, from: 2, to: 7)
    letters.removeSubrange(r2)
    print(letters)
    
}

func getStringRange(source:String, from:Int, to:Int) -> Range<String.Index>{
    let start = source.index(source.startIndex,offsetBy:from)
    let end = source.index(source.startIndex,offsetBy:to)
    let range = start..<end
    return range
}

//func mysubstr(source:String, from:Int, to:Int) -> String {
//    let range = getStringRange(source: source, from: from, to: to)
//    return source.substring(with: range)
//}

func mysubstr2(source:String, from:Int, to:Int) -> String {
    let nsource = Array(source.characters)
    var retString = ""
    for i in from..<to {
        retString += String(nsource[i])
    }
    return retString
}


func mystr2(){
    let a = 10 , b = 3
    if a > b {
        print( "OK" )
    }else{
        print( "XX")
    }
    
    let c = "10" , d = "3"
    if c > d {
        print( "OK1" )
    }else{
        print( "XX1")
    }
    
    var a1:String? = "sample"
    if let a2 = a1 {
        print(type(of:a1))
        print(type(of:a2))
        print("OK2:\(a1):\(a2)")
    }else{
        print("XX2")
    }
    
    let twid = "A123456789"
    if let range = twid.range(of: "1234"){
        print("OK3")
    }else{
        print("XX3")
    }
    
    if let range = twid.range(of: "^[A-Z][12][0-9]{8}$",options: .regularExpression){
        print("OK4")
    }else{
        print("XX4")
    }
    
    
    
    
}







