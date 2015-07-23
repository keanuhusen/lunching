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
    var randomEmojis:[String] = ["👍", "😁!!", "👌", "🍡", "😎"]
    
    
    @IBOutlet weak var silverWare: UIButton!
    
    @IBOutlet weak var randomLable: UILabel!
    
    @IBOutlet weak var winer: UILabel!
    @IBAction func Additem(sender: AnyObject) {
        
        
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
                    let randomEmojiIndexLable = Int(arc4random_uniform(UInt32(self!.randomEmojis.count)))
                    
                    self!.randomLable.text = enteredText + " " + self!.randomEmojis[randomEmojiIndexLable] + " was added"
                    self!.optionList.append(enteredText)
                    /* I Was thinking that maybe if someone doesn't care they leave it blank 
                    for(var index = 0; index <= self!.optionList.count; ++index){
                        if(self!.optionList[index] != " "){
                            self!.optionList.removeAtIndex(index)
                        }
                    }*/
                    
                }
            })
        
        alertController?.addAction(action)
        self.presentViewController(alertController!, animated: true, completion: nil)
        
        
        
        
    }
    
    @IBAction func randomizer(sender: AnyObject) {
        
        var alertFail: UIAlertController?
        
        alertFail = UIAlertController(title: "BRUH!", message: "If it's just one choice...", preferredStyle: .Alert)
        
        alertFail?.addAction(UIAlertAction(title: "GO THERE!", style: .Default, handler: { (action: UIAlertAction!) in
        }))
        
      


        
        if(self.optionList.count > 1)
        {
            let randomIndex = Int(arc4random_uniform(UInt32(self.optionList.count)))
            let randomEmojiIndex = Int(arc4random_uniform(UInt32(self.randomEmojis.count)))
            winer.text = "You're going to " + self.optionList[randomIndex] + randomEmojis[randomEmojiIndex]
        }else{
             GoogleWearAlert.showAlert(title:"Enter a Shop 😩", image:nil, type: .Error, duration: 1.5, inViewController: self)
            //self.presentViewController(alertFail!, animated: true, completion: nil)
            //Delay 
            
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
