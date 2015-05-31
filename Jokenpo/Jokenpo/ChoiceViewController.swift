//
//  ViewController.swift
//  Jokenpo
//
//  Created by Lucas da Silva on 5/23/15.
//  Copyright (c) 2015 SHIELD. All rights reserved.
//

import UIKit

class ChoiceViewController: UIViewController {

    @IBOutlet weak var rockButton: UIButton!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    
    // MARK: - Programmatic Approach
    @IBAction private func playRock(sender: UIButton) {
        let resultsViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
        resultsViewController.userChoice = getUserShape(sender)
        
        presentViewController(resultsViewController, animated: true, completion: nil)
    }
    
    
    // MARK: - Segue with Code Approach
    @IBAction private func playPaper(sender: UIButton) {
        performSegueWithIdentifier("play", sender: sender)
    }
    
    // MARK: - Segue
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "play" {
            let resultsViewController = segue.destinationViewController as! ResultsViewController
            
            resultsViewController.userChoice = getUserShape(sender as! UIButton)
        }
    }
    
    // MARK: - Utilities
    private func getUserShape(sender: UIButton) -> String {
        if sender == rockButton {
            return "Rock"
        } else if sender == paperButton {
            return "Paper"
        } else {
            return "Scissors"
        }
    }

}

