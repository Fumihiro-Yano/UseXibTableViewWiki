//
//  ViewController.swift
//  UseXibTableViewWiki
//
//  Created by 矢野史洋 on 2016/03/30.
//  Copyright © 2016年 矢野史洋. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.orangeColor()
        self.title = "View"
        
        let pushTableViewButton = UIButton(frame: CGRectMake(0,0,200,50))
        pushTableViewButton.backgroundColor = UIColor.orangeColor()
        pushTableViewButton.layer.masksToBounds = true
        pushTableViewButton.setTitle("Puhs Tableview", forState: .Normal)
        pushTableViewButton.layer.cornerRadius = 20.0
        pushTableViewButton.layer.position = CGPoint(x: self.view.bounds.width/2, y:200)
        pushTableViewButton.addTarget(self, action: "onClickpushTableViewButton:", forControlEvents: .TouchUpInside)
        
        self.view.addSubview(pushTableViewButton)
    }
    
    
    internal func onClickpushTableViewButton(sender: UIButton){
        let testTableViewController = TestTableViewController()
        self.navigationController?.pushViewController(testTableViewController, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

