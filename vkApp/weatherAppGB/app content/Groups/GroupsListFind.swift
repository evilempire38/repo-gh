//
//  GroupsListFind.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class GroupsListFind: UITableViewController {

     var groups = [
          "BMW",
          "Mercedes",
          "Toyota",
          "KIA"
      ]

      override func viewDidLoad() {
          super.viewDidLoad()
      }

      // MARK: - Table view data source

      override func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }

      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return groups.count
      }

      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "groupCell", for: indexPath) as! GroupsListFindCell
        let groupzz = groups[indexPath.row]
          cell.groupsLabel.text = groupzz
          return cell

}
}
