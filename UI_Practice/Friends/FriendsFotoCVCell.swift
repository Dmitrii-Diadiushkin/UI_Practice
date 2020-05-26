//
//  FriendFotoCVCell.swift
//  UI_Practice
//
//  Created by Dmitrii Diadiushkin on 22.05.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import UIKit

class FriendsFotoCVCell: UICollectionViewCell {
    
    @IBOutlet weak var friendsFoto: UIImageView!
    @IBOutlet weak var fotoLike: LikeControl!
    var indexRow: Int = 0
    
    func setUpLikeControl() {
        fotoLike.indexLike = indexRow
        fotoLike.setUpView()
    }
}
