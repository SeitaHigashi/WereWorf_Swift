//
//  WereWorfGame.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/04.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation

class WereWorfGame {
    var Member : [Player]?
    init() {
        
    }
    
    func MemberAddGame(newElement element:Player){
        self.Member?.insert(element, at: 1)
    }
}
