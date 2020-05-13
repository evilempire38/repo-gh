//
//  NewsStruct.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 12.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit
struct News {
    var avatar, photo: UIImage?
    var name, text: String
   
}

final class NewsFactory {
    static func makeNews() -> [News] {
        let news1 = News(avatar: UIImage(named: "bmw"), photo: UIImage(named: "e60"), name: "BMW", text: "Этот Бумер в сервисе")
        let news2 = News(avatar: UIImage(named: "toyota"), photo: UIImage(named: "crown"), name: "Toyota", text: "Drive your dreams!")
        return [news1, news2]
    }
}
