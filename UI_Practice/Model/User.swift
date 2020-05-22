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
    var friendAvatar: UIImage
}

var friends: [friendsData] = [friendsData(friendName: "Harley Quinn", friendAvatar: UIImage(named: "HQF")!),
friendsData(friendName: "Kenny McCormick", friendAvatar: UIImage(named: "KMcKF")!),
friendsData(friendName: "Lisa Simpson", friendAvatar: UIImage(named: "LSF")!),
friendsData(friendName: "Poison Ivy", friendAvatar: UIImage(named: "PYF")!),
friendsData(friendName: "Lumpy", friendAvatar: UIImage(named: "LF")!),]
