//
//  AvatarCollectionViewCell.swift
//  DrugData
//
//  Created by Grazi Berti on 24/11/20.
//

import UIKit

class AvatarCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var imageViewAvatar: UIImageView!
    
    func setup(avatar: ProfileImage) {
        imageViewAvatar.image = UIImage(named: avatar.profileImage)
    }
}
