//
//  Group.swift
//  UI_Practice
//
//  Created by Dmitrii Diadiushkin on 20.05.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import Foundation
import UIKit

struct groupData: Equatable {
    var groupName: String
    var groupAvatar: UIImage
}

var allGroups: [groupData] = [groupData(groupName: "Happy Tree Friends", groupAvatar: UIImage(named: "htf")!),
groupData(groupName: "Simpsons", groupAvatar: UIImage(named: "simpsons")!),
groupData(groupName: "South Park", groupAvatar: UIImage(named: "sp")!),
groupData(groupName: "Rick and Morty", groupAvatar: UIImage(named: "RnM")!),
groupData(groupName: "Harley Quinn", groupAvatar: UIImage(named: "HQ")!),]

var myGroups = [groupData]()

