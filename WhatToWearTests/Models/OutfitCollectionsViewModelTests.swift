//
//  OutfitCollectionsViewModelTests.swift
//  WhatToWearTests
//
//  Created by nicole ruduss on 29/12/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import XCTest
@testable import WhatToWear

class OutfitCollectionsViewModelTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testgetOutfitCollections_ShouldReturnOutfits() {
        let viewModel = OutfitCollectionsViewModel()
        
        let expected = ["Dinner", "Church"]
        
        XCTAssertEqual(expected, viewModel.outfitCollections)
    }
    
}
