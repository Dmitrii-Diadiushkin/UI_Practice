//
//  LikeControl.swift
//  UI_Practice
//
//  Created by Dmitrii Diadiushkin on 26.05.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import UIKit

class LikeControl: UIControl {

    var likeImage = UIImageView()
    var likeCounter = UILabel()
    var indexLike: Int = 0
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUpView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUpView()
    }
    
    func setUpView() {
        likeImage.frame.size.height = self.frame.height
        likeImage.frame.size.width = likeImage.frame.height
        
        self.addSubview(likeImage)
        
        likeCounter.frame.size.height = self.frame.height
        self.addSubview(likeCounter)
        
        likeCounter.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint(item: likeCounter, attribute: NSLayoutConstraint.Attribute.trailing, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.trailing, multiplier: 1, constant: 5).isActive = true
        NSLayoutConstraint(item: likeCounter, attribute: NSLayoutConstraint.Attribute.leading, relatedBy: NSLayoutConstraint.Relation.equal, toItem: likeImage, attribute: NSLayoutConstraint.Attribute.leading, multiplier: 1, constant: 16).isActive = true
        
        likeCounter.font = likeCounter.font.withSize(10)
        
        if friends[indexLike].friendAvatar.fotoLiked {
            likeImage.image = UIImage(named: "filledHeart")
        }else{
            likeImage.image = UIImage(named: "emptyHeart")
        }
        likeCounter.text = String(friends[indexLike].friendAvatar.fotoLikes)
        
    }

    override func beginTracking(_ touch: UITouch, with event: UIEvent?) -> Bool {
        
        if friends[indexLike].friendAvatar.fotoLiked {
            likeImage.image = UIImage(named: "emptyHeart")
            friends[indexLike].friendAvatar.fotoLikes -= 1
            friends[indexLike].friendAvatar.fotoLiked = false
            likeCounter.text = String(friends[indexLike].friendAvatar.fotoLikes)
            
        }else{
            likeImage.image = UIImage(named: "filledHeart")
            friends[indexLike].friendAvatar.fotoLikes += 1
            friends[indexLike].friendAvatar.fotoLiked = true
            likeCounter.text = String(friends[indexLike].friendAvatar.fotoLikes)
        }
        return false
    }
    
}
