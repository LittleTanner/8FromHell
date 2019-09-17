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
    var people: [Person] = PersonController.sharedInstance.mockData


    
    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setsUpUI()
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

