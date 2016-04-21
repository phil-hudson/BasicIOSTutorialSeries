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
        self.goToStoryBoard("SecondScreenViewController")
        
    }
    @IBAction func dataTableViewButtonPressed(sender: AnyObject) {
        
        self.goToStoryBoard("DataTableViewController")
        
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
        self.nextViewButton.setTitleColor(InterfaceColors.MainColor, forState: .Normal)
        
        self.moreCatsLabel.text = "My cat is fluffy"
        self.moreCatsLabel.textColor = InterfaceColors.MainColor
        
        print("in function :)")
    }

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

