//
//  Types.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/06.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation

class Types{
    var allTypes:Int
    var Villager:Int = 0
    var WereWorf:Int = 0
    var Knight:Int = 0
    var FortuneTeller:Int = 0
    var Hunter:Int = 0
    init(Player player:Int) {
        allTypes = player
        for x in 1...player {
            switch x%7 {
            case 0,1:Villager+=1
            case 2,3:WereWorf+=1
            case 4:Knight+=1
            case 5:FortuneTeller+=1
            case 6:Hunter+=1
            default: Villager+=1
            }
        }
    }
    func allprint() -> Void {
        print("Villager:\(Villager)")
        print("WereWorf:\(WereWorf)")
        print("Knight:\(Knight)")
        print("FortuneTeller:\(FortuneTeller)")
        print("Hunter:\(Hunter)")
    }
    
}

