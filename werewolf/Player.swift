//
//  Player.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/02.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation

enum PlayerType :String{
    case Unknown = "Unknown"
    case WereWorf = "WereWorf"
    case Villager = "Villager"
    case Knight = "Knight"
    case FortuneTeller = "FortuneTeller"
    case Hunter = "Hunter"
}

class Player{
    var player_name : String = "unknown"
    var player_type : PlayerType = PlayerType.Unknown
    init(Name name:String) {
        self.player_name = name
    }
    func print_name(){
        print(self.player_name)
    }
    func print_type(){
        print(self.player_type)
    }
}

class WereWorf : Player{
    override init(Name name: String) {
        super.init(Name : name)
        self.player_type = PlayerType.WereWorf
    }
}

class Human : Player{
}

class Villager : Human{
    override init(Name name: String) {
        super.init(Name: name)
        self.player_type = PlayerType.Villager
    }
}

class Knight : Human{
    override init(Name name: String) {
        super.init(Name: name)
        self.player_type = PlayerType.Knight
    }
}

class FortuneTeller : Human{
    override init(Name name: String) {
        super.init(Name: name)
        self.player_type = PlayerType.FortuneTeller
    }
    
}

class Hunter : Human{
    override init(Name name: String) {
        super.init(Name: name)
        self.player_type = PlayerType.Hunter
    }
}
