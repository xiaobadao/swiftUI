//
//  ViewController.swift
//  datePiker
//
//  Created by ww on 17/2/20.
//  Copyright © 2017年 zww. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let datePicker = UIDatePicker.init(frame: self.view.bounds)
        datePicker.datePickerMode = UIDatePickerMode.Date
        datePicker.minimumDate = NSDate.init()
        datePicker.addTarget(self, action: #selector(ViewController.dateChanged(_:)), forControlEvents: UIControlEvents.ValueChanged)
        self.view.addSubview(datePicker);
    }
    func dateChanged(datePiker : UIDatePicker) {
        
        let formatter = NSDateFormatter.init()
        
        formatter.dateFormat = "yyyy-MM-dd-HH-mm-ss"
        print(formatter.stringFromDate(datePiker.date))
    }
}

