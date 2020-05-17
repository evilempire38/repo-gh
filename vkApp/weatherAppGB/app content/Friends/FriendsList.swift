//
//  FriendsList.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit
import Alamofire




class FriendsList: UITableViewController {
    var friendResponse: FriendResponse? = nil
    var arrayFI: [FriendItem] = []
    var arrayString: [String] = []
  
        
//        : [Users] = [
//        Users(name: "Petr", surname: "Checkh", avatar: "pc" , photos: ["pc2", "pc3"]),
//        Users(name: "Wayne", surname: "Rooney", avatar: "wr", photos: ["wr2", "wr3"]),
//        Users(name: "Frank", surname: "Ribery", avatar: "fr", photos: ["fr2", "fr3"]),
//        Users(name: "Steve", surname: "Gerard", avatar: "sg", photos: ["sg2", "sg3"]),
//        Users(name: "Robert", surname: "Levandowski", avatar: "rl", photos: ["rl2", "rl3"]),
//        Users(name: "Ryan", surname: "Gigs", avatar: "rg", photos: ["rg2", "rg3"]),
//        Users(name: "Cristiano", surname: "Ronaldo", avatar: "cr", photos: ["cr2", "cr3"]),
//        Users(name: "Clint", surname: "Dempsy", avatar: "cd", photos: ["cd2", "cd3"]),
//        Users(name: "Papa", surname: "Buba Diop", avatar: "pb", photos: ["pb2", "pb3"]),
//        Users(name: "Evgeniy", surname: "Malkin", avatar: "em", photos: ["em2", "em3"]),
//        Users(name: "Alexander", surname: "Ovechkin", avatar: "ao", photos: ["ao2", "ao3"]),
//        Users(name: "Pavel", surname: "Datsuk", avatar: "pd", photos: ["pd2", "pd3"]),
//        Users(name: "Iliya", surname: "Kovalchuk", avatar: "ik", photos: ["ik2", "ik3"]),
//        Users(name: "Jdeno", surname: "Chara", avatar: "jc", photos: ["jc2", "jc3"]),
//        Users(name: "Petr", surname: "Sykora", avatar: "ps", photos: ["ps2", "ps3"]),
//        Users(name: "Sidney", surname: "Crosby", avatar: "sc", photos: ["sc2", "sc3"]),
//        Users(name: "Fedor", surname: "Gromov", avatar: "fg", photos: ["fg2", "fg3"])
//    ]
    
    @IBOutlet weak var searchBar: UISearchBar!
    
    
    
       override func viewDidLoad() {
            super.viewDidLoad()
        VKRequest.getFriends() // метод парсинга
    }
       override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int { friendResponse?.response.items.count ?? 0 }
       
        override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellFriend", for: indexPath) as! FriendsListCell
            cell.userLabel.text = friendResponse!.response.items[indexPath.row].last_name + " " + friendResponse!.response.items[indexPath.row].first_name
//        let user = friends[indexPath.row]
//        cell.userLabel.text = "\(user.name) \(user.surname)"
//        cell.userLabel.adjustsFontSizeToFitWidth = true
//        cell.userLabel.minimumScaleFactor = CGFloat(10)
//        cell.userPic.image = user.mainImage
        return cell
         
        
        
    
//   override func prepare(for segue : UIStoryboardSegue, sender: Any?) {
//        if segue.identifier == "showPics" {
//            let reference = segue.destination as! FriendCollection
//            if let index = tableView.indexPathForSelectedRow {
//                let user = friends[index.row]
//                reference.photos = user.photos
//                reference.title = "\(user.name) \(user.surname)"
//            }
//        }
//    }
    
   /*   override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> FriendsListCell {
        let arrayOfNames = [Users]()
        let sortedArray = arrayOfNames.sorted {$0.surname < $1.surname}
        return sortedArray
 */
}
}
