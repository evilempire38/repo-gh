//
//  GroupsList.swift
//  weatherAppGB
//
//  Created by Андрей Коноплёв on 01.04.2020.
//  Copyright © 2020 Андрей Коноплёв. All rights reserved.
//

import UIKit

class GroupsList: UITableViewController {

    var groupsList = [String]()
      
      override func viewDidLoad() {
          super.viewDidLoad()
      }
      
   
      
      override func numberOfSections(in tableView: UITableView) -> Int {
          return 1
      }
      
      override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
          return groupsList.count
      }
      
      
      override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
          let cell = tableView.dequeueReusableCell(withIdentifier: "groupsCell", for: indexPath) as! GroupsListCell
        let groupz = groupsList[indexPath.row]
        cell.GroupListLaberl.text = groupz
        return cell
      }
         
   
    @IBAction func addGroup(segue: UIStoryboardSegue) {
        if segue.identifier == "addGroup" {
                let find = segue.source as! GroupsListFind
                
                if let indexPath = find.tableView.indexPathForSelectedRow {
                let group = find.groups[indexPath.row]
                if !groupsList.contains(group) {
                    groupsList.append(group)
                        tableView.reloadData()
                    }
                } 
            }

    }
    
      override func tableView(
          _ tableView: UITableView,
          commit editingStyle: UITableViewCell.EditingStyle,
          forRowAt indexPath: IndexPath) {
          
          
          if editingStyle == .delete {
              groupsList.remove(at: indexPath.row)
              tableView.reloadData()
          }

      }
      
      

}
