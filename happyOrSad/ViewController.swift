//
//  ViewController.swift
//  happyOrSad
//
//  Created by Fulcherberguer, Fernanda on 2019-11-18.
//  Copyright © 2019 Fulcherberguer, Fernanda. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    //Variables needed later
    var happynumber = 0
    var sadnumber = 0
    var numberOfEmojis = 0
    
    //Put Outlets
    @IBOutlet weak var phraseInputField: UITextField!
    
    @IBOutlet weak var outputResult: UILabel!
    
    //MARK: Methods
    //Functions (make things happen)
    //Actions go here
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    //Analyse the text provided
    @IBAction func analyzeText(_ sender: Any) {
        
        //1. INPUT
        //Clear out the output label from the last time the Analyze button was pressed
        outputResult.text = ""
        happynumber = 0
        sadnumber = 0
        numberOfEmojis = 0
        
        //Guard against no input
        guard let phraseInput = phraseInputField.text, phraseInput.count > 0 else {
            outputResult.text = "Please enter a phrase to analyze."
            return
            
        }
        
        //Make sure the input is not too long
        if phraseInput.count > 255 {
            outputResult.text = "Please enter a phrase with 255 characters or less."
            return
        }
        
        
        // Loop over the characters in the string
        for character in phraseInput {
            //access individual characters of a string using an index
            switch character {
            case "😃","😊","🙂","😄":
                happynumber+=1
                numberOfEmojis+=1
            case "☹️","🙁","😕","😔":
                sadnumber-=1
                numberOfEmojis-=1
            default:
                outputResult.text = "none"
            }
            
            let
            
        
            
        }
        
    }
    
    
    
}






