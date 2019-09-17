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
    let profilePicScary: String
    let fearPic: String
    let hometown: String
    let bioPics: [String]
    
    init(name: String, profilePicScary: String, fearPic: String, hometown: String, bioPics: [String]) {
        self.name = name
        self.profilePicScary = profilePicScary
        self.fearPic = fearPic
        self.hometown = hometown
        self.bioPics = bioPics
    }
}
