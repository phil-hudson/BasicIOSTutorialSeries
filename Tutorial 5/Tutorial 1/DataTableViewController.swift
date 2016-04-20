//
//  DataTableViewController.swift
//  Tutorial 1
//
//  Created by Phil Hudson on 20/04/2016.
//  Copyright © 2016 Purple Goldfish. All rights reserved.
//

import UIKit

class DataTableViewController : UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    let catNames = ["Daisy", "CattymcCat", "Ginger cat", "Saleem", "dinosaur"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return self.catNames.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let title = self.catNames[indexPath.row]
        
        let cell = UITableViewCell()
        cell.textLabel?.text = title
        
        return cell
        
    }
    
}
