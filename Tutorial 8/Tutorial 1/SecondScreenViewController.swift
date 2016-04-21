//
//  SecondScreenViewController.swift
//  Tutorial 1
//
//  Created by Phil Hudson on 18/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import UIKit

class SecondScreenViewController: UIViewController {
    
    
    @IBAction func pictureButtonPressed(sender: AnyObject) {
        
        print("picture button pressed")
        pictureImageView.image = UIImage(named: "cat2")
        
    }
    
    @IBOutlet weak var pictureImageView: UIImageView!
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func goToStoryBoard(name: String) {
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = mainStoryboard.instantiateViewControllerWithIdentifier(name)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
}