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
    var emojiCount = 0
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
        emojiCount = 0
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
        
        
        // Created happy emojis and sad emojis constantss
        let happyArray = "😃😊😄🙂"
        let sadArray = "☹🙁😕😔"
        // Loop to check every single character for an emoji
        
        // Loop over the characters in the string
        for character in phraseInput {
            // if/else statement to check if any of the characters are emojis
            if happyArray.contains(character) {
                // If emoji count is over 1 - user is happy
                emojiCount+=1
                // User has used an emoji
                numberOfEmojis+=1
                
            } else if sadArray.contains(character){
                // If emoji count is under 1 - user is sad
                emojiCount-=1
                // User has used an emoji
                numberOfEmojis+=1
                
            } else {
                // Set the label text to 'none'
                outputResult.text = "none."
                
                // Second if/else statement to see if emoji count is positive or negative indicating if user is happy or sad
                if emojiCount >= 1 {
                    outputResult.text = "happy."
                } else if emojiCount <= -1 {
                    outputResult.text = "sad."
                    
                    // if emoji count is zero there is the same number of happy or sad emojis
                } else if emojiCount == 0, numberOfEmojis != 0 {
                    outputResult.text = "unsure."
                    // set default to none because it means there are no emojis
                } else {
                    outputResult.text = "none."
                    
                
        
                    
                }
                
                
                
                
                
            }
            
        }
        
        
        
    }
    
    
    
    
    
    
}
