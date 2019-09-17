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
    
    var mockData: [Person] = [Person(name: "Kevin Tanner", profilePicNormal: "normalPic", profilePicScary: "scaryPic", hometown: "Valencia, CA", bioPics: ["bioPic1", "bioPic2", "bioPic3"])]
    
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
