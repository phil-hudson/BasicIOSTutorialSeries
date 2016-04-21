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
    @IBAction func dataTableViewButtonPressed(sender: AnyObject) {
        
        self.performSegueWithIdentifier("DataTableViewSegue", sender: self)
        
    }
    
    @IBOutlet weak var nextViewButton: UIButton!
    @IBOutlet weak var moreCatsLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        print("View has loaded :)")
        
        self.configureUIComponents()
        
    }
    
    func configureUIComponents(){
        self.nextViewButton.setTitle("Lots of cats", forState: .Normal)
        self.nextViewButton.setTitleColor(UIColor.redColor(), forState: .Normal)
        
        self.moreCatsLabel.text = "My cat is fluffy"
        self.moreCatsLabel.textColor = UIColor.blueColor()
        
        print("in function :)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

