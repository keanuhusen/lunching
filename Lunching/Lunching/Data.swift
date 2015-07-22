//
//  Date.swift
//  Lunching
//
//  Created by Apple User on 7/21/15.
//  Copyright (c) 2015 Keanu Husen. All rights reserved.
//

import Foundation

class Data{
    
    class Entry {
    
    
    var allChoices:String
    
    init(userChoice: String)
    {
        self.allChoices = userChoice
    }
    
    }
    
    let choiceText = [
        Entry(userChoice: "Wendys"),
        Entry(userChoice: "in n out")
    ]
    
}