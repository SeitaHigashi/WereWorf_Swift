//
//  Player.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/02.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation

class Player{
    var player_name : String = "unknown"
    init(Name name:String) {
        self.player_name = name
    }
    func print_name(){
        print(self.player_name)
    }
}

class WereWorf : Player{
}

class Human : Player{
}

class Villager : Human{
}

class Knight : Human{
}

class FortuneTeller : Human{
    
}

class Hunter : Human{
    
}
