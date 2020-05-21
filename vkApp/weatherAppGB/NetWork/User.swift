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
import RealmSwift

class FriendResponse : Object, Decodable {
    @objc dynamic var response: FriendList
}

class FriendList : Object, Decodable {
    @objc dynamic var count: Int
    @objc dynamic var items: [FriendItem]
}

class FriendItem : Object, Decodable {
    @objc dynamic var first_name: String
    @objc dynamic var last_name: String
    @objc dynamic var online: Int
    @objc dynamic var photo_50: String?
    @objc dynamic var id: Int
}

