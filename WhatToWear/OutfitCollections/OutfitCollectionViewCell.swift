//
//  OutfitCollectionViewCell.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var text: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with outfit: Outfit) {
        self.image.image = UIImage(named: "white_t_shirt")
        self.text.text = outfit.name
    }

}
