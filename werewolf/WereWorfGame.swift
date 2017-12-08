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
            self.evening()
        }while true
    }
    func day() ->  Void{
        for player in self.Data.Member {
            player.day(PlayerList: self.Data.Member)
        }
    }
    func evening() -> Void {
        for player in self.Data.Member {
            player.evening(PlayerList: self.Data.Member)
        }
    }
    func night() ->  Void{
        for player in self.Data.Member {
            player.night(PlayerList: self.Data.Member)
        }
        self.Kill(KillPlayer: self.Vote(PlayerList: self.Data.Member))
    }
    func Kill(KillPlayer killplayer:Player) -> Void {
        var killnumber :Int = 0
        for player in 0..<self.Data.Member.count {
            if self.Data.Member[player].player_name == killplayer.player_name {
                killnumber = player
            }
        }
        self.Data.Member.remove(at: killnumber)
    }
    func Vote(PlayerList playerlist : [Player]) -> Player {
        var selectdictionary : [String:Int] = [String:Int]()
        for player in self.Data.Member {
            if selectdictionary[player.player_name] == nil {
                selectdictionary[player.player_name] = 1
            }else{
                selectdictionary[player.player_name]! += 1
            }
        }
        var max_player : (String,Int) = ("",0)
        for i in selectdictionary {
            if i.value > max_player.1 {
                max_player.0 = i.key
                max_player.1 = i.value
            }
        }
        var selectplayer : Player = Player()
        for player in self.Data.Member {
            if player.player_name == max_player.0 {
                selectplayer = player
            }
        }
        return selectplayer
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
