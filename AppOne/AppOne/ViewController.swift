//
//  ViewController.swift
//  AppOne
//
//  Created by Lucas on 4/13/15.
//  Copyright (c) 2015 AWLKA. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()


    }

    @IBAction func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }

}

