//
//  FriendsListCell.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class FriendsListCell: UITableViewCell {
    @IBOutlet weak var userLabel: UILabel!
    @IBOutlet weak var userPic: UIImageView!
    @IBOutlet weak var shadows: UIView!
    
    @IBOutlet weak var picture: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        picture.layer.borderColor = UIColor.lightGray.cgColor
        picture.layer.borderWidth = 3
        picture.layer.cornerRadius = 25
        picture.layer.masksToBounds = true
    }

}
