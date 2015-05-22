//
//  ViewController.swift
//  ImagePicker
//
//  Created by Lucas da Silva on 5/22/15.
//  Copyright (c) 2015 SHIELD. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func experiment() {
        let nextController = UIImagePickerController()
        self.presentViewController(nextController, animated: true, completion:nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

