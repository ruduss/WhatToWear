//
//  OutfitCollectionsViewModel.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class OutfitCollectionsViewModel: NSObject {

    public private(set) var outfits: [Outfit]!
    public private(set) var outfitCollections:[OutfitCollection] = []
    
    override init() {
        super.init()
        self.outfitCollections = getMockCollections()
        self.outfits = getMockOutfits()
    }
    
    func getCurrentOutfitCollections() -> [OutfitCollection] {
        var collections: [OutfitCollection] = []
        for outfit in self.outfits {
            if let _ = collections.first(where: {$0.name == outfit.collection.name}) {
            } else {
                collections.append(outfit.collection)
            }
        }
        return collections
    }
    
    func getOutfitsInCollection(by index: Int) -> [Outfit]? {
        guard let collectionName = self.outfitCollections[index].name as? String else {
            return nil
        }
        return getOutfitsInCollection(by: collectionName)
    }
    
    func getOutfitsInCollection(by collectionName: String) -> [Outfit]? {
        var collectionOutfits: [Outfit] = []
        
        for outfit in self.outfits {
            if outfit.collection.name == collectionName {
                collectionOutfits.append(outfit)
            }
        }
        return collectionOutfits
    }
    
    func getMockCollections() -> [OutfitCollection] {
        return [OutfitCollection(name: "Dinner"),
                OutfitCollection(name: "Church")]
    }
    
    private func getMockOutfits() -> [Outfit] {
        let dinnerOutfits: [Outfit] = [Outfit(name: "1", picture: "picture 1", collection: OutfitCollection(name: "Dinner")),
                                       Outfit(name: "2", picture: "picture 2", collection: OutfitCollection(name: "Dinner")),
                                       Outfit(name: "3", picture: "picture 3", collection: OutfitCollection(name: "Church")),
                                       Outfit(name: "4", picture: "picture 4", collection: OutfitCollection(name: "Church"))]
        return dinnerOutfits
    }
}
