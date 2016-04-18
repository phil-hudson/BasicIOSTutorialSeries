//
//  ViewController.swift
//  Tutorial 1
//
//  Created by Phil Hudson on 18/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {

    @IBAction func nextViewButtonPressed(sender: AnyObject) {
        
        print("Button pressed")
        self.performSegueWithIdentifier("SecondViewSegue", sender: self)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("View has loaded :)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

