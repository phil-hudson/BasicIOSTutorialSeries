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
    
    var catNames = ["Daisy", "CattymcCat", "Ginger cat", "Saleem", "dinosaur"]
    var result:String?
    
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
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        self.result = self.catNames[indexPath.row]
        
        print(result)

        self.goToStoryBoard("ResultViewController")
    }
    
    func tableView(tableView: UITableView, editActionsForRowAtIndexPath indexPath: NSIndexPath) -> [UITableViewRowAction]? {

        let deleteAction = UITableViewRowAction(style: .Destructive, title: "Delete") { (rowAction: UITableViewRowAction, indextPath: NSIndexPath) -> Void in
            
            print("delete me ")
            
            self.catNames.removeAtIndex(indexPath.row)
            self.tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: UITableViewRowAnimation.Automatic)
            self.tableView.reloadData()
            
        }
        
        return [deleteAction]
        
    }
    
    func goToStoryBoard(name: String) {
        
        if name == "ResultViewController" {
            
            let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
            let vc = mainStoryboard.instantiateViewControllerWithIdentifier(name) as! ResultViewController
            vc.catName = self.result
            
            self.navigationController?.pushViewController(vc, animated: true)
        }
        
    }
    
}
