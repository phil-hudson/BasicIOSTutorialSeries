//
//  SecondScreenViewController.swift
//  Tutorial 1
//
//  Created by Phil Hudson on 18/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {
    @IBAction func backButtonPressed(sender: AnyObject) {
        
        print("back button pressed")
        self.performSegueWithIdentifier("HomeSegue", sender: self)
        
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