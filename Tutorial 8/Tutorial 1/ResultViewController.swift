//
//  ResultViewController.swift
//  Tutorial 1
//
//  Created by Phil Hudson on 20/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import UIKit

class ResultViewController : UIViewController {
    
    var catName:String?
    
    @IBOutlet weak var catNameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (self.catName != nil) {
            catNameLabel.text = self.catName
        } else {
            catNameLabel.text = "Empty :("
        }
        
    }

}
