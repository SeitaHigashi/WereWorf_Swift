//
//  Management.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/04.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation

class Management{
    var date :Int = 0
    var MurderOnTheFirstDay : Bool = false
    var NumberOfPlayer : Int = 0
    var NumberOfType :Types
    var Member : [Player] = [Player]()
    init() {
        print("プレイ人数を入力してください")
        self.NumberOfPlayer = scanInt()
        print("\(NumberOfPlayer)人でプレイします")
        self.NumberOfType = Types(Player: NumberOfPlayer)
        print("現在の設定")
        print("初日の殺害:\(MurderOnTheFirstDay)")
        setplyaer()
    }
    func setplyaer(){
        for _ in 0..<self.NumberOfType.Villager {
            self.Member.insert(Villager(), at: 0)
        }
        for _ in 0..<self.NumberOfType.WereWorf {
            self.Member.insert(WereWorf(), at: 0)
        }
        for _ in 0..<self.NumberOfType.FortuneTeller {
            self.Member.insert(FortuneTeller(), at: 0)
        }
        for _ in 0..<self.NumberOfType.Hunter {
            self.Member.insert(Hunter(), at: 0)
        }
        for _ in 0..<self.NumberOfType.Knight {
            self.Member.insert(Knight(), at: 0)
        }
        self.Member = self.Member.shuffled()
        var name :String
        var i = 1
        for player in Member {
            print("SetName\(i)")
            name = scanString()
            player.set_name(Name: name)
            i+=1
        }
    }
}

