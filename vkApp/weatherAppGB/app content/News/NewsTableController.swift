//
//  NewsTableController.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 12.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class NewsTableController: UITableViewController {

       let news = NewsFactory.makeNews()

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return news.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "newsCell", for: indexPath) as! NewsTableCell
        
        cell.groupName.text = news[indexPath.row].name
        cell.avatar.image = news[indexPath.row].avatar
        cell.imgOfPost.image = news[indexPath.row].photo
        cell.postText.text = news[indexPath.row].text
        
        return cell
    }

}
