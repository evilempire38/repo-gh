//
//  Group.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 17.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation



struct GroupResponse: Decodable {
    var response: GroupList
}

struct GroupList: Decodable {
    var count: Int
    var items: [GroupItem]
}

struct GroupItem: Decodable {

    var photo_50: String?
    var name: String
}
