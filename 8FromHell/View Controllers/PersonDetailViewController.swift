//
//  PersonDetailViewController.swift
//  8FromHell
//
//  Created by Kevin Tanner on 9/17/19.
//  Copyright © 2019 Kevin Tanner. All rights reserved.
//

import UIKit

class PersonDetailViewController: UIViewController {
    
    // MARK: - Outlets
    @IBOutlet weak var scaryPicImageView: UIImageView!
    @IBOutlet weak var fearPicImageView: UIImageView!
    
    @IBOutlet weak var personNameLabel: UILabel!
    @IBOutlet weak var hometownLabel: UILabel!
    
    @IBOutlet weak var bioPic1: UIImageView!
    @IBOutlet weak var bioPic2: UIImageView!
    
    // MARK: - Properties
    var person: Person?
    
    // MARK: - Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setsUpViews()
        // Do any additional setup after loading the view.
    }
    
    // MARK: - Actions
    @IBAction func backButtonTapped(_ sender: Any) {
        // Create an instance of the main storyboard
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        // Create an instance of the view controller
        let controller = storyboard.instantiateViewController(withIdentifier: "mainViewController")
        // Present the main view controller
        self.present(controller, animated: true, completion: nil)
    }
    

    
    // MARK: - Custom Methods
    func setsUpViews() {
        
        guard let person = person else { return }
        
        scaryPicImageView.image = UIImage(named: person.profilePicScary)
        fearPicImageView.image = UIImage(named: person.fearPic)
        personNameLabel.text = person.name
        hometownLabel.text = person.hometown
        bioPic1.image = UIImage(named: person.bioPics[0])
        bioPic2.image = UIImage(named: person.bioPics[1])
        scaryPicImageView.layer.cornerRadius = scaryPicImageView.frame.height / 2
        fearPicImageView.layer.cornerRadius = fearPicImageView.frame.height / 2
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
