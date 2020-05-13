//
//  FriendsCollectionCell.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class FriendsCollectionCell: UICollectionViewCell {
    @IBOutlet weak var somePic: UIView!
    @IBOutlet weak var newPic: UIImageView!
    @IBOutlet weak var likeButton: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    @IBAction func likeAimate(_ sender: UIButton) {
        sender.pulse()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderColor = UIColor.white.cgColor
        layer.borderWidth = 1
        layer.cornerRadius = 25
        likeButton.setImage(#imageLiteral(resourceName: "heartRed"), for: .selected)
        likeButton.setImage(#imageLiteral(resourceName: "heartBlue"), for: .normal)
    }
    @IBAction func lije() {
        likeButton.isSelected.toggle()
        likeLabel.textColor = likeButton.isSelected ? .red : .systemBlue
        likeLabel.text = likeButton.isSelected ? "1" : "0"
        UIView.animateKeyframes(withDuration: 0.5, delay: 0, options: .autoreverse, animations: { self.likeLabel.frame.origin.y += 10 })
            self.likeLabel.frame.origin.y -= 10
        
        
        
    }
    
    
}
