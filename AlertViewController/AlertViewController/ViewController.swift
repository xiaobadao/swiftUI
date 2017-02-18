//
//  ViewController.swift
//  AlertViewController
//
//  Created by ww on 17/2/18.
//  Copyright © 2017年 zww. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showAlert: UIButton!
    @IBOutlet weak var showActionSheet: UIButton!
    @IBOutlet weak var lertWithForm: UIButton!
    
    @IBAction func showAlertAction(sender: AnyObject) {
        let alertController = UIAlertController.init(title: "My Title", message: "This is alert", preferredStyle: UIAlertControllerStyle.Alert)
        
        let okAction = UIAlertAction.init(title: "ok", style: UIAlertActionStyle.Default) { _ in
            print("you have pressed the ok button")
        }
        alertController.addAction(okAction)
        
        let cancelAction = UIAlertAction.init(title: "cancle", style: UIAlertActionStyle.Cancel) { _ in
            print("you have pressed the cancel button")
        }
        alertController.addAction(cancelAction)
        
        self.presentViewController(alertController, animated: true) {
            
        }
    }
   
    @IBAction func showAlertSheetAction(sender: AnyObject) {
        let alertSheetController = UIAlertController.init(title: "My title", message: "this is message", preferredStyle: UIAlertControllerStyle.ActionSheet)
        let okAction = UIAlertAction.init(title: "ok", style: UIAlertActionStyle.Default) { _ in
            print("you have pressed the ok button")
        }
        alertSheetController.addAction(okAction)
        
        let cancelAction = UIAlertAction.init(title: "cancle", style: UIAlertActionStyle.Cancel) { _ in
            print("you have pressed the cancel button")
        }
        alertSheetController.addAction(cancelAction)
        
        self.presentViewController(alertSheetController, animated: true) { 
            
        }
        
    }

    @IBAction func alertWithFormAction(sender: AnyObject) {
    }
    
}

