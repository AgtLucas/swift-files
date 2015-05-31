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
    
    
    @IBAction private func playRock(sender: UIButton) {
        let resultViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ResultsViewController") as! ResultsViewController
        
//        resultViewController.userChoice = getUserShape()
    }


}

