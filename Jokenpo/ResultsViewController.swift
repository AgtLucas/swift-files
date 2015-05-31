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
        
        displayResult()
    }
    
    // MARK: - UI
    
    private func displayResult() {
        var imageName: String
        var text: String
        var youWon: Bool = false
        let matchup = "\(userChoice) vs. \(opponentChoice)"
        
        // Handle the tie!
        if userChoice == opponentChoice {
            resultImage.image = UIImage(named: "tie")
            resultLabel.text = "\(matchup): it's a tie!"
        }
        
        // If you're the winneerrrrrrr!
        switch (userChoice) {
            case "Rock":
                youWon = opponentChoice == "Scissors"
            case "Paper":
                youWon = opponentChoice == "Rock"
            default:
                youWon = opponentChoice == "Paper"
        }
        
        // Create text
        if youWon {
            text = "You Won! \(matchup)"
            imageName = "\(userChoice)-\(opponentChoice)".lowercaseString
        } else {
            text = "You Lost! \(matchup)"
            imageName = "\(opponentChoice)-\(userChoice)".lowercaseString
        }
        
        // Update the UI components
        resultImage.image = UIImage(named: imageName)
        resultLabel.text = text
    }
    
    @IBAction private func playAgain() {
        dismissViewControllerAnimated(true, completion: nil)
    }

}
