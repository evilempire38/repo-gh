//
//  User.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 17.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation
import WebKit
import Alamofire

struct FriendResponse: Decodable {
    var response: FriendList
}

struct FriendList: Decodable {
    var count: Int
    var items: [FriendItem]
}

struct FriendItem: Decodable {
    var first_name: String
    var last_name: String
    var online: Int
    var photo_50: String?
    var id: Int
}

