//
//  OutfitCollectionsHeaderView.swift
//  WhatToWear
//
//  Created by nicole ruduss on 23/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollectionsHeaderView: UICollectionViewCell {

    @IBOutlet weak var headerLabel: UILabel!
    
    func configure(with outfitCollection: OutfitCollection) {
        self.headerLabel.text = outfitCollection.name
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
}
