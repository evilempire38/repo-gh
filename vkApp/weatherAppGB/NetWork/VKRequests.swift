//
//  VKRequests.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 13.05.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import Foundation
import Alamofire

class VKRequest {
    let bUrl = VK.shared.baseUrl // бейз ЮРЛ тянем из VK
    let key = Session.connect.token // токен из синглтона Сешн

    func getFriends () {
        let path = VK.Methods.getFriends.methodName   // метод для VK API тяну из VK файла перечисления
        let parametrs : Parameters = ["v":5.68, "access_token" : key]
        let url = bUrl + path
        AF.request(url,parameters: parametrs).responseJSON { response in
            print(response.value)
        }
}
    func getGroups () {
        let path = VK.Methods.getGroups.methodName
         let parametrs : Parameters = ["v":5.68, "access_token" : key]
               let url = bUrl + path
               AF.request(url,parameters: parametrs).responseJSON { response in
                   print(response.value)
    }
}
    func getPhotos () {
        let path = VK.Methods.getPhotos.methodName
        let parametrs : Parameters = ["v":5.68, "access_token" : key]
        let url = bUrl + path
        AF.request(url,parameters: parametrs).responseJSON { response in
            print(response.value)
}
        func getSearch () {
            let path = VK.Methods.searchGroups.methodName
            let parametrs : Parameters = ["v":5.68, "access_token" : key]
                let url = bUrl + path
                AF.request(url,parameters: parametrs).responseJSON { response in
                    print(response.value)
}
}
    }}
