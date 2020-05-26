//
//  User.swift
//  UI_Practice
//
//  Created by Dmitrii Diadiushkin on 20.05.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import Foundation
import UIKit

struct friendsData: Equatable {
    var friendName: String
    var friendAvatar: friendFoto
}

struct friendFoto:Equatable {
    var fotoName: UIImage
    var fotoLiked: Bool
    var fotoLikes: Int
}

var friends: [friendsData] = [friendsData(friendName: "Harley Quinn", friendAvatar: friendFoto(fotoName: UIImage(named: "HQF")!, fotoLiked: false, fotoLikes: 1)),
friendsData(friendName: "Kenny McCormick", friendAvatar: friendFoto(fotoName: UIImage(named: "KMcKF")!, fotoLiked: true, fotoLikes: 2)),
friendsData(friendName: "Lisa Simpson", friendAvatar: friendFoto(fotoName: UIImage(named: "LSF")!, fotoLiked: false, fotoLikes: 3)),
friendsData(friendName: "Poison Ivy", friendAvatar: friendFoto(fotoName: UIImage(named: "PYF")!, fotoLiked: true, fotoLikes: 4)),
friendsData(friendName: "Lumpy", friendAvatar: friendFoto(fotoName: UIImage(named: "LF")!, fotoLiked: false, fotoLikes: 5)),]
