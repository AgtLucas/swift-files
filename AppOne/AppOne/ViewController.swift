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
    var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        var label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"
        self.view.addSubview(label)
        self.label = label


        var button = UIButton()
        button.frame = CGRectMake(150, 250, 60, 60)
        button.setTitle("Click", forState: .Normal)
        button.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(button)

        button.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)


    }

    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }

}

