//
//  VK.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 13.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//



import Foundation
import Alamofire

class VK {
    
    private init() {}
    
    public static let shared = VK()
    let baseUrl = "https://api.vk.com/method/"
    enum Methods {
           case getGroups
           case getFriends
           case getPhotos
           case searchGroups
           
           var methodName: String {
               switch self {
               case .getGroups:
                   return "groups.get"
               case .getFriends:
                   return "friends.get"
               case .getPhotos:
                   return "photos.get"
               case .searchGroups:
                   return "groups.search"
               }
           }

}
}
