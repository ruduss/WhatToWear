//
//  outfit.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class Outfit: NSObject {
    private(set) var name: String
    private(set) var picture: String
    private(set) var collection: OutfitCollection
    
    init(name: String, picture: String, collection: OutfitCollection) {
        self.name = name
        self.picture = picture
        self.collection = collection
    }
}
