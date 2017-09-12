//
//  poker.swift
//  sample02
//
//  Created by sample on 2017/9/8.
//  Copyright © 2017年 sample. All rights reserved.
//

import Foundation

func poker(){
    let n = 52
    var poker:[Int] = Array()
    for i in 0 ..< n { poker += [i] }
    print(poker.description)
    let npoker = shullfe(source: poker)
    print(npoker.description)
    
    
    var players:[[Int]] = [[],[],[],[]]
    
    for ( i, card ) in npoker.enumerated(){
        players[ i % 4 ] += [card]
    }
//    for i in 0 ..< players.count{
//        print(players[i].description)
//    }
    
    let suits = ["黑桃","紅心","方塊","梅花"]
    let values = ["A","2","3","4","5","6","7","8","9","10","J","Q","K"]
    for i in 0..<players.count{
        players[i].sort()
        for card in players[i] {
            print("\(suits[card/13])\(values[card%13])",terminator:" ")
        }
        print()
    }

    
}

func shullfe(source:Array<Int>) -> Array<Int> {
    var poker = source
    let n = poker.count
    var rand = -1
    var temp = -1
    var max = -1
    for i in 0 ..< n{
        max = n - i
        rand = Int(arc4random_uniform(UInt32(max)))
        //swap : poker[rand] <-> poker[last]
        temp = poker[rand]
        poker[rand] = poker[ max - 1 ]
        poker[ max - 1 ] = temp
    }
    return poker
}
