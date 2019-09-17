//
//  Person.swift
//  8FromHell
//
//  Created by Kevin Tanner on 9/17/19.
//  Copyright © 2019 Kevin Tanner. All rights reserved.
//

import UIKit

class Person: Codable {
    let name: String
    let profilePicNormal: String
    let profilePicScary: String
    let hometown: String
    let bioPics: [String]
    
    init(name: String, profilePicNormal: String, profilePicScary: String, hometown: String, bioPics: [String]) {
        self.name = name
        self.profilePicNormal = profilePicNormal
        self.profilePicScary = profilePicScary
        self.hometown = hometown
        self.bioPics = bioPics
    }
}
