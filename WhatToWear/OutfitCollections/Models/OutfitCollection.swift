//
//  OutfitCollection.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollection: NSObject {
    var name: String
    var outfits: [Outfit]
    
    init(name: String, outfits: [Outfit]) {
        self.name = name
        self.outfits = outfits
    }
}
