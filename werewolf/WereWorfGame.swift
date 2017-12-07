//
//  WereWorfGame.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/04.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation


func scanString() -> String {
    var str :String?
    repeat{
        str=readLine()
    }while str == nil
    return str!
}

func scanInt() -> Int {
    var i:Int?
    repeat{
        i=Int(scanString())
    }while i == nil
    return i!
}

class WereWorfGame {
    var Data : Management
    init() {
        Data=Management()
        self.Play()
    }
    
    func Play() -> Void {
        repeat{
            self.night()
            self.day()
        }while true
    }
    func day() ->  Void{
        for player in self.Data.Member {
            player.day(PlayerList: self.Data.Member)
        }
    }
    func night() ->  Void{
        for player in self.Data.Member {
            player.night(PlayerList: self.Data.Member)
        }
    }
}


extension Array {
    
    func shuffled() -> [Element] {
        var results = [Element]()
        var indexes = (0 ..< count).map { $0 }
        while indexes.count > 0 {
            let indexOfIndexes = Int(arc4random_uniform(UInt32(indexes.count)))
            let index = indexes[indexOfIndexes]
            results.append(self[index])
            indexes.remove(at: indexOfIndexes)
        }
        return results
    }
    
}
