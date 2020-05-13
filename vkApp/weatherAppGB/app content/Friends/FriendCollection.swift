//
//  FriendCollection.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit
class FriendCollection: UICollectionViewController {
    var photos = [String]()

       override func viewDidLoad() {
            super.viewDidLoad()
        }
        
        
        
        override func numberOfSections(in collectionView: UICollectionView) -> Int {
            return 1
        }
        
        
        override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
            photos.count
        }
        
        override func collectionView(
            _ collectionView: UICollectionView,
            cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "friendCollectionCell", for: indexPath) as! FriendsCollectionCell
            cell.newPic.image = UIImage(named: photos[indexPath.row])
                    return cell
        }
        
    }

    extension FriendCollection: UICollectionViewDelegateFlowLayout {
        func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            
            let cellWidth = (collectionView.bounds.width - 50) / 2
            
            
            return CGSize(width: cellWidth, height: cellWidth)
        }
    }


