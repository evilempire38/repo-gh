//
//  VKRequests.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 13.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation
import Alamofire
import WebKit

class VKRequest {
    
    
    static func getGroups () {
        let key = Session.connect.token
        let path = VK.Methods.getGroups.methodName
        let parametrs : Parameters = ["v":5.68, "access_token" : key, "extended" : "1"]
        let url = VK.shared.baseUrl + path
        AF.request(url, parameters: parametrs).responseData { response in
            guard let data = response.value else {
                return
            }
            print(data)
            do {
                let groups = try JSONDecoder().decode(GroupResponse.self, from: data)
                print(groups)
            } catch {
                print(error)
            }
        }
    }



static func getFriends () {
        let key = Session.connect.token
        let path = VK.Methods.getFriends.methodName
        let parametrs : Parameters = ["v":5.68, "access_token" : key, "fields" : "name"]
        let url = VK.shared.baseUrl + path
        AF.request(url, parameters: parametrs).responseData { response in
            guard let data = response.value else {
                return
            }
            print(data)
            do {
                let users = try JSONDecoder().decode(FriendResponse.self, from: data)
                print(users)
            } catch {
                print(error)
            }
        }
    }
}
