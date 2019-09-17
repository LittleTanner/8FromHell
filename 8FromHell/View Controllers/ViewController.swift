//
//  ViewController.swift
//  8FromHell
//
//  Created by Kevin Tanner on 9/17/19.
//  Copyright © 2019 Kevin Tanner. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var cameronButton: UIButton!
    @IBOutlet weak var sageButton: UIButton!
    @IBOutlet weak var maryannButton: UIButton!
    @IBOutlet weak var blakeButton: UIButton!
    @IBOutlet weak var josephButton: UIButton!
    @IBOutlet weak var kevinButton: UIButton!
    @IBOutlet weak var nathanButton: UIButton!
    @IBOutlet weak var benButton: UIButton!
    
    // MARK: - Properties
    var people: [Person] = PersonController.sharedInstance.people


    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setsUpUI()
        
        PersonController.sharedInstance.loadFromPersistentStorage()
        
        if people.count == 0 {
            people = PersonController.sharedInstance.mockData
        }
        
        PersonController.sharedInstance.saveToPersistentStorage()
        
    }

    // MARK: - Actions
    @IBAction func cameronButtonTapped(_ sender: Any) {
        
    }
    @IBAction func sageButtonTapped(_ sender: Any) {
    }
    @IBAction func maryannButtonTapped(_ sender: Any) {
    }
    @IBAction func blakeButtonTapped(_ sender: Any) {
    }
    @IBAction func josephButtonTapped(_ sender: Any) {
    }
    @IBAction func kevinButtonTapped(_ sender: Any) {
    }
    @IBAction func nathanButtonTapped(_ sender: Any) {
    }
    @IBAction func benButtonTapped(_ sender: Any) {
    }
    
    
    // MARK: - Custom Methods
    
    func setsUpUI() {
        cameronButton.setBackgroundImage(UIImage(named: "scaryPicCameron"), for: .normal)
        sageButton.setBackgroundImage(UIImage(named: "scaryPicSage"), for: .normal)
        maryannButton.setBackgroundImage(UIImage(named: "scaryPicMaryann"), for: .normal)
        blakeButton.setBackgroundImage(UIImage(named: "scaryPicBlake"), for: .normal)
        josephButton.setBackgroundImage(UIImage(named: "scaryPicJoseph"), for: .normal)
        kevinButton.setBackgroundImage(UIImage(named: "scaryPicKevin"), for: .normal)
        nathanButton.setBackgroundImage(UIImage(named: "scaryPicNathan"), for: .normal)
        benButton.setBackgroundImage(UIImage(named: "scaryPicBen"), for: .normal)
        cameronButton.layer.masksToBounds = false
        cameronButton.clipsToBounds = true
        cameronButton.layer.cornerRadius = cameronButton.bounds.size.height / 2
        sageButton.layer.masksToBounds = false
        sageButton.clipsToBounds = true
        sageButton.layer.cornerRadius = sageButton.bounds.size.height / 2
        maryannButton.layer.masksToBounds = false
        maryannButton.clipsToBounds = true
        maryannButton.layer.cornerRadius = maryannButton.bounds.size.height / 2
        blakeButton.layer.masksToBounds = false
        blakeButton.clipsToBounds = true
        blakeButton.layer.cornerRadius = blakeButton.bounds.size.height / 2
        josephButton.layer.masksToBounds = false
        josephButton.clipsToBounds = true
        josephButton.layer.cornerRadius = josephButton.bounds.size.height / 2
        kevinButton.layer.masksToBounds = false
        kevinButton.clipsToBounds = true
        kevinButton.layer.cornerRadius = kevinButton.bounds.size.height / 2
        nathanButton.layer.masksToBounds = false
        nathanButton.clipsToBounds = true
        nathanButton.layer.cornerRadius = nathanButton.bounds.size.height / 2
        benButton.layer.masksToBounds = false
        benButton.clipsToBounds = true
        benButton.layer.cornerRadius = benButton.bounds.size.height / 2
        
    }


    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // IIDOO
        
        switch segue.identifier {
        case "toCameron":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[1]
            destinationVC.person = personToSend
        case "toSage":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[4]
            destinationVC.person = personToSend
        case "toMaryann":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[7]
            destinationVC.person = personToSend
        case "toBlake":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[2]
            destinationVC.person = personToSend
        case "toJoseph":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[3]
            destinationVC.person = personToSend
        case "toKevin":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[0]
            destinationVC.person = personToSend
        case "toNathan":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[5]
            destinationVC.person = personToSend
        case "toBen":
            guard let destinationVC = segue.destination as? PersonDetailViewController else { return }
            
            let personToSend = people[6]
            destinationVC.person = personToSend
            
        default: print("IDK WHAT HAPPENED")
        }
        
        
    }

}

