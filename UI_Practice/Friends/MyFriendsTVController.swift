//
//  MyFriendsTVController.swift
//  UI_Practice
//
//  Created by Dmitrii Diadiushkin on 22.05.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import UIKit

class MyFriendsTVController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }


    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "myFriendsCell", for: indexPath) as! MyFriendsTVCell
        let friend = friends[indexPath.row]

        // Configure the cell...
        
        cell.avatarUIView.avatarImage.image = friend.friendAvatar.fotoName
        cell.friendsName.text = friend.friendName
        
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showFoto" {
            
            if let indexPath = self.tableView.indexPathForSelectedRow {
                let friendFotoVC = segue.destination as! FriendsFotoCVController
                friendFotoVC.indexRowFoto = indexPath.row
            }
        }
    }
    
}
