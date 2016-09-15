//
//  QuestionScreen.swift
//  SpanishQuiz
//
//  Created by Gabriele on 9/14/16.
//  Copyright © 2016 Gabriele. All rights reserved.
//

import WatchKit
import Foundation


class QuestionScreen: WKInterfaceController {
    
    let questionModel = Model().getQuestionSet()

    @IBOutlet var questionField: WKInterfaceLabel!
    @IBOutlet var nextButton: WKInterfaceButton!
    @IBOutlet var answerButton: WKInterfaceButton!
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func next() {
        // Go to next question in array
        print("Next")
        answerButton.setHidden(false)
        nextButton.setHidden(true)
    }
    
    @IBAction func enterAnswer() {
        
        answerButton.setHidden(true)
        
        presentTextInputController(withSuggestions: [""], allowedInputMode: .plain) { (result) in
            if let choice = result {
               print(choice[0])
                if((choice[0] as AnyObject).lowercased as String) == "hello" {
                    self.questionField.setText("CORRECT!")
                } else {
                    self.questionField.setText("WRONG!")
                }
            }
                 self.nextButton.setHidden(false)
        }
        
    }
    
    func checkAnswer(questionSet: Answer, answer: String) {
        
    }
}
