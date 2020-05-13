//
//  Session.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 11.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation

class Session {
    private init(){}
    static let connect = Session()
    
    var token : String
    var userID : Int
}


