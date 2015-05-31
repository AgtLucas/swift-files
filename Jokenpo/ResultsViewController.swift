//
//  ResultsViewController.swift
//  Jokenpo
//
//  Created by Lucas da Silva on 5/24/15.
//  Copyright (c) 2015 SHIELD. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet private weak var resultImage: UIImageView!
    @IBOutlet private weak var resultLabel: UILabel!
    
    // MARK: - Choices
    var userChoice: String!
    var opponentChoice: String!
    
    // MARK: - View Lifecycle Methods
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        
        // Generate a random choice for the enemy!!!
        let choices = ["Rock", "Paper", "Scissors"]
        let randomIndex = Int(arc4random() % 3)
        opponentChoice = choices[randomIndex]
        
//        displayResult()
    }
    

}
