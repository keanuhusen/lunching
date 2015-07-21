//
//  ViewController.swift
//  Lunching
//
//  Created by Keanu Husen on 7/18/15.
//  Copyright (c) 2015 Keanu Husen. All rights reserved.
//

import UIKit
import Parse

class ViewController: UIViewController {
    
    @IBOutlet var textField1: UITextField!
    @IBAction func addBtn1(sender: AnyObject) {
        let restaurantName = PFObject(className: "TestObject")
        restaurantName["RestaurantName"] = textField1.text
        restaurantName.save()
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

