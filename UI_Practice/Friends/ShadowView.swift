//
//  ShadowView.swift
//  UI_Practice
//
//  Created by Dmitrii Diadiushkin on 25.05.2020.
//  Copyright © 2020 Dmitrii Diadiushkin. All rights reserved.
//

import UIKit

class ShadowView: UIView {
    
    var avatarImage = UIImageView()
    @IBInspectable var shadowColor: UIColor = .black
    @IBInspectable var shadowOpacity: Float = 0.6
    @IBInspectable var shadowRadius: CGFloat = 5
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setUp()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setUp()
    }
    
    func setUp(){
        
        avatarImage.frame = self.layer.bounds
        avatarImage.clipsToBounds = true
        avatarImage.layer.cornerRadius = avatarImage.frame.width / 2
        
        self.layer.cornerRadius = avatarImage.frame.width / 2
        self.layer.shadowColor = shadowColor.cgColor
        self.layer.shadowRadius = shadowRadius
        self.layer.shadowOpacity = shadowOpacity
        self.layer.shadowOffset = CGSize.zero
        self.addSubview(avatarImage)
    }
}
