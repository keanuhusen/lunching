//
//  RandomViewController.swift
//  Lunching
//
//  Created by Apple User on 7/23/15.
//  Copyright (c) 2015 Keanu Husen. All rights reserved.
//

import UIKit

class RandomViewController: UIViewController {
    
    var optionList:[String] = []
    var counter:Int = 0
    
    
    @IBOutlet weak var randomLable: UILabel!
    
    @IBOutlet weak var winer: UILabel!
    
    @IBAction func randomizer(sender: AnyObject) {
        var alertController: UIAlertController?
        
        alertController = UIAlertController(title: "Must be hungry", message: "Enter the places nearby", preferredStyle: .Alert)
        
        alertController!.addTextFieldWithConfigurationHandler(
            {(textField: UITextField!) in
                textField.placeholder = "Enter something"
        })
        
        let action = UIAlertAction(title: "Submit",
            style: UIAlertActionStyle.Default,
            handler: {[weak self]
                (paramAction:UIAlertAction!) in
                if let textFields = alertController?.textFields{
                    let theTextFields = textFields as! [UITextField]
                    let enteredText = theTextFields[0].text
                    self!.randomLable.text = enteredText + "!!!😩"
                    self!.optionList.append(enteredText)
                    
                }  
            })
        
        alertController?.addAction(action)
        self.presentViewController(alertController!, animated: true, completion: nil)
        
    if(self.optionList.count > 4)
    {
        let randomIndex = Int(arc4random_uniform(UInt32(self.optionList.count)))
        winer.text = self.optionList[randomIndex]
    }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
