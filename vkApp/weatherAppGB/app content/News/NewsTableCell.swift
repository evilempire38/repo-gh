//
//  NewsTableCell.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 12.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class NewsTableCell: UITableViewCell {
    @IBOutlet weak var groupName: UILabel!
    @IBOutlet weak var avatar: Avatar!
    @IBOutlet weak var postText: UILabel!
    @IBOutlet weak var imgOfPost: UIImageView!

    @IBOutlet weak var buttonLike: UIButton!
    @IBOutlet weak var counterLike: UILabel!
    
    override func awakeFromNib() {
           super.awakeFromNib()
           buttonLike.setImage(#imageLiteral(resourceName: "heartRed"), for: .selected)
           buttonLike.setImage(#imageLiteral(resourceName: "heartBlue"), for: .normal)
        
        
        
        
        
    }
    @IBAction func likeAimate(_ sender: UIButton) {
        sender.pulse()
    }
    
   
    @IBAction func giveLike() {
        buttonLike.isSelected.toggle()
        counterLike.textColor = buttonLike.isSelected ? .red : .systemBlue // краш
        counterLike.text = buttonLike.isSelected ? "1" : "0"
        UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: .autoreverse, animations: { self.counterLike.frame.origin.y += 10 })
        self.counterLike.frame.origin.y -= 10
    
    }


}
