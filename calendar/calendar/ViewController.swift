//
//  ViewController.swift
//  calendar
//
//  Created by apple on 2017/2/20.
//  Copyright © 2017年 Chuckie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let datePicker = UIDatePicker.init(frame: self.view.bounds)
        datePicker.datePickerMode = UIDatePickerMode.date
        datePicker.minimumDate = NSDate.init() as Date
        datePicker.addTarget(self, action:"dateChanged:", for: UIControlEvents.valueChanged)
        self.view.addSubview(datePicker);
        
    }
    
    
    func dateChanged(datePiker : UIDatePicker) {
        
        let formatter = DateFormatter()
        
        formatter.dateFormat = "yyyy/MM/dd-HH-mm-ss"
        print(formatter.string(from: datePiker.date))
    }

}

