//
//  outfit.swift
//  WhatToWear
//
//  Created by nicole ruduss on 17/09/2017.
//  Copyright © 2017 nicole ruduss. All rights reserved.
//

import UIKit

class Outfit: NSObject {
    private var name: String
    private var picture: String
    
    init(name: String, picture: String) {
        self.name = name
        self.picture = picture
    }
}
