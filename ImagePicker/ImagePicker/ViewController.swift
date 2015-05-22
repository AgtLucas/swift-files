//
//  ViewController.swift
//  ImagePicker
//
//  Created by Lucas da Silva on 5/22/15.
//  Copyright (c) 2015 SHIELD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func experiment() {
        
        let controller = UIAlertController()
        controller.title = "Test alert"
        controller.message = "This is just a test, yo!"
        
        let okAction = UIAlertAction(title: "Ok", style: UIAlertActionStyle.Default) {
            action in self.dismissViewControllerAnimated(true, completion: nil)
        }
        
        controller.addAction(okAction)
        self.presentViewController(controller, animated: true, completion: nil)
        
        
    }


}

