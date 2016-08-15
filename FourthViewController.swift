//
//  FourthViewController.swift
//  PrimaryResponder
//
//  Created by Mitchell Klich on 5/8/16.
//  Copyright © 2016 College Tuition. All rights reserved.
//

import UIKit

class FourthVIewController: UIViewController, UITableViewDelegate   {
    
    @IBOutlet var options: UITableView!
    

    var cellContent = ["Prerequisites", "Lifeguarding Class", "Lifeguarding Manuel", "Completion", "Other"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        cell.textLabel?.text = cellContent[indexPath.row]
        return cell
        
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}
