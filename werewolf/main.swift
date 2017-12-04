//
//  main.swift
//  werewolf
//
//  Created by 東誠太 on 2017/12/02.
//  Copyright © 2017年 東誠太. All rights reserved.
//

import Foundation

print("Hello, World!")

var tomoharu : Player = Villager(Name:"tomoharu")
var takumi : Player = WereWorf(Name:"takumi")
var koki : Player = FortuneTeller(Name:"koki")
var yukiko : Player = Hunter(Name: "yukiko")
tomoharu.print_name()
tomoharu.print_type()
takumi.print_name()
takumi.print_type()
koki.print_name()
koki.print_type()
koki.divination(Teller: takumi)
koki.divination(Teller: tomoharu)
koki.divination(Teller: yukiko)
