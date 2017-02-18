//
//  ViewController.swift
//  TableView
//
//  Created by ww on 17/2/18.
//  Copyright © 2017年 zww. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }


    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCellWithIdentifier("cellOne")
        if cell == nil {
            cell = UITableViewCell.init(style: .Plain, reuseIdentifier: "cellOne")
        }
        return cell!;
        
    }
}

