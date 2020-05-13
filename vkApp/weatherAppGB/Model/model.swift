//
//  model.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class Users {
    var name : String
    var surname : String
    var mainImage : UIImage?
    var photos : [String]
    
    init(name:String, surname: String, avatar : String, photos: [String]) {
        self.name = name
        self.surname = surname
        let img = UIImage(named: avatar)
        self.mainImage = img
        self.photos = photos
        
    }
    
}




