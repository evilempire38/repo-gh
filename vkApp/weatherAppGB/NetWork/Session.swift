//
//  Session.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 11.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation
import Alamofire


class Session {
    private init() {}
    
    public static let connect = Session()
    
    var token: String = ""
    var userId: Int = 0
    
}



