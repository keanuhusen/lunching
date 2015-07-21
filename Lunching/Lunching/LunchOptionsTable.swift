//
//  LunchOptionsTable.swift
//  Lunching
//
//  Created by Keanu Husen on 7/18/15.
//  Copyright (c) 2015 Keanu Husen. All rights reserved.
//

import UIKit

class LunchOptionsTable: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    var optionItems: [String] = []
    
    @IBOutlet var addLunchOption: UITextField!
    
    @IBAction func addLunchButton(sender: AnyObject) {
        optionItems.append(addLunchOption.text)
        
        if (optionItems.count > 0) {
            println("\(optionItems[0])")
        }
        
        addLunchOption.text = ""

    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (optionItems.count > 0) {
            println("\(optionItems[0])")
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return optionItems.count
    }
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        println("testing selection for \(optionItems[indexPath.row]).")
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("optionCell", forIndexPath: indexPath) as! UITableViewCell
        
        // Configure the cell...
        cell.textLabel?.text = self.optionItems[indexPath.row]
        
        return cell
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
