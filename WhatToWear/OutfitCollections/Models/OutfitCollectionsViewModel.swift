//
//  OutfitCollectionsViewModel.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollectionsViewModel: NSObject {

    var outfitCollections: [OutfitCollection]!
    
    override init() {
        super.init()
        self.outfitCollections = getMockOutfitCollections()
    }
    
    func getMockOutfitCollections() -> [OutfitCollection] {
        let dinnerOutfits: [Outfit] = [Outfit(name: "1", picture: "picture 1"),
                                       Outfit(name: "2", picture: "picture 2"),
                                       Outfit(name: "3", picture: "picture 3"),
                                       Outfit(name: "4", picture: "picture 4")]
        return [OutfitCollection(name: "Dinner", outfits: dinnerOutfits),
                OutfitCollection(name: "Church", outfits: dinnerOutfits)]
    }
}
