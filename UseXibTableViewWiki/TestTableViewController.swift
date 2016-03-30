//
//  TestTableViewController.swift
//  UseXibTableViewWiki
//
//  Created by 矢野史洋 on 2016/03/30.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class TestTableViewController: UITableViewController {
    
    var namesArray : [String] = ["gon1", "gon2", "gon3", "gon4", "gon6", "gon7", "gon8", "gon9", "gon10", "gon11", "gon12", "gon13", "gon14"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "TableView"
        self.tableView.registerNib(UINib(nibName: "TestTableViewCell", bundle: nil), forCellReuseIdentifier: "TestTableViewCell")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 13
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell : TestTableViewCell = tableView.dequeueReusableCellWithIdentifier("TestTableViewCell") as! TestTableViewCell
        
        // Configure the cell...
        cell.nameLabel.text = namesArray[indexPath.row]
        cell.photoImageView.image = UIImage(named: "sample.jpg")
        
        return cell
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 64.0
    }
}