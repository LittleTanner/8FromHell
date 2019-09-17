//
//  PersonController.swift
//  8FromHell
//
//  Created by Kevin Tanner on 9/17/19.
//  Copyright © 2019 Kevin Tanner. All rights reserved.
//

import Foundation

class PersonController {
    
    static let sharedInstance = PersonController()
    
    var people: [Person] = []
    
    var mockData: [Person] = [Person(name: "Kevin Tanner", profilePicScary: "scaryPicKevin", fearPic: "fearPicKevin", hometown: "Valencia, CA", bioPics: ["bioPicKevin1", "bioPicKevin2"]),
                              Person(name: "Cameron Stuart", profilePicScary: "scaryPicCameron", fearPic: "fearPicCameron", hometown: "Boca Raton, FL", bioPics: ["bioPicCameron1", "bioPicCameron2"]),
                              Person(name: "Blake Kvarfordt", profilePicScary: "scaryPicBlake", fearPic: "fearPicBlake", hometown: "Las Vegas, NV", bioPics: ["bioPicBlake1", "bioPicBlake2"]),
                              Person(name: "Joseph, Stone", profilePicScary: "scaryPicJoseph", fearPic: "fearPicJoseph", hometown: "Colorado Springs, CO", bioPics: ["bioPicJoseph1", "bioPicJoseph2"]),
                              Person(name: "Sage Stamper ", profilePicScary: "scaryPicSage", fearPic: "fearPicSage", hometown: "Blackfoot, ID", bioPics: ["bioPicSage1", "bioPicSage2"]),
                              Person(name: "Nathan Hampton", profilePicScary: "scaryPicNathan", fearPic: "fearPicNathan", hometown: "North Cackalacky, CAN", bioPics: ["bioPicNathan1", "bioPicNathan2"]),
                              Person(name: "Ben Jenkins", profilePicScary: "scaryPicBen", fearPic: "fearPicBen", hometown: "Orem, UT", bioPics: ["bioPicBen1", "bioPicBen2"]),
                              Person(name: "Maryann Vasilyeva", profilePicScary: "scaryPicMaryann", fearPic: "fearPicMaryann", hometown: "Detroit, MI", bioPics: ["bioPicMaryann1", "bioPicMaryann2"])]
    
    
    
    // CRUD
    
    
    
    
    // Persistence
    private func fileURL() -> URL {
        let urls = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let fileName = "8FromHell.json"
        let documentsDirectoryURL = urls[0].appendingPathComponent(fileName)
        return documentsDirectoryURL
    }
    
    func saveToPersistentStorage() {
        let jsonEncoder = JSONEncoder()
        do {
            let data = try jsonEncoder.encode(people)
            try data.write(to: fileURL())
        } catch let error {
            print("There was an error saving: \(error.localizedDescription)")
        }
    }
    
    func loadFromPersistentStorage() {
        let jsonDecoder = JSONDecoder()
        do {
            let data = try Data(contentsOf: fileURL())
            let people = try jsonDecoder.decode([Person].self, from: data)
            self.people = people
        } catch let error {
            print("There was an error loading data: \(error.localizedDescription)")
        }
    }
    
}
