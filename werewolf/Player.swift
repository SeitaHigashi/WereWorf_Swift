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

enum PlayerAttribute :String{
    case Unknown = "Unknown"
    case WereWorf = "WereWorf"
    case Human = "Human"
}

class Player{
    var player_name : String = "unknown"
    var player_type : PlayerType = PlayerType.Unknown
    var player_attribute : PlayerAttribute = PlayerAttribute.Unknown
    var select_player : String = String()
    init() {
    }
    func set_name(Name name:String) -> Void {
        self.player_name = name
    }
    func print_name(){
        print(self.player_name)
    }
    func print_type(){
        print(self.player_type)
    }
    func print_attribute() {
        print(self.player_attribute)
    }
    func day(PlayerList playerlist:[Player]) -> Void {
        print("\(self.player_name)のdayターンです")
    }
    func evening(PlayerList playerlist : [Player]) -> Void {
        print("\(self.player_name)のeveningターンです")
        Vote(PlayerList: playerlist)
    }
    func night(PlayerList playerlist:[Player]) -> Void {
        print("\(self.player_name)のnightターンです")
    }
    func Vote(PlayerList playerlist :[Player]) -> Void {
        print("誰に投票しますか")
        self.select_player = playerselect(PlayerList: playerlist).player_name
        print("\(select_player)に投票しました")
    }
    func playerselect(PlayerList playerlist:[Player]) -> Player {
        var target : String
        repeat{
            print("input targetname")
            target = scanString()
            for player in playerlist {
                if target == player.player_name {
                    return player
                }
            }
            print("notfound \(target)")
        }while true
    }
    //func divination(Teller teller:Player){}
}

class WereWorf : Player{
    override init() {
        super.init()
        self.player_type = PlayerType.WereWorf
        self.player_attribute = PlayerAttribute.WereWorf
    }
}

class Human : Player{
}

class Villager : Human{
    override init() {
        super.init()
        self.player_type = PlayerType.Villager
        self.player_attribute = PlayerAttribute.Human
    }
}

class Knight : Human{
    override init() {
        super.init()
        self.player_type = PlayerType.Knight
        self.player_attribute = PlayerAttribute.Human
    }
}

class FortuneTeller : Human{
    override init() {
        super.init()
        self.player_type = PlayerType.FortuneTeller
        self.player_attribute = PlayerAttribute.Human
    }
    override func day(PlayerList playerlist : [Player]) {
        self.divination(Teller: self.playerselect(PlayerList: playerlist))
    }
    func divination(Teller teller: Player) {
        print("\(teller.player_name) の職業は \(teller.player_type)")
    }
}

class Hunter : Human{
    override init() {
        super.init()
        self.player_type = PlayerType.Hunter
        self.player_attribute = PlayerAttribute.Human
    }
}
