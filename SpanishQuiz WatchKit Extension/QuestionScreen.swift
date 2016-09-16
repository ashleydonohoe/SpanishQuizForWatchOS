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
    var numberCorrect = 0
    var numberWrong = 0
    var questionsAsked = 0
    var currentIndex = 0

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
        if currentIndex == questionModel.count {
            print("Game Over")
            dismiss()
        } else {
            print("Next")
            let question = questionModel[currentIndex]
            questionField.setText(question.question)
            answerButton.setHidden(false)
            nextButton.setHidden(true)
        }
    }
    
    @IBAction func enterAnswer() {
        
        answerButton.setHidden(true)
        
        presentTextInputController(withSuggestions: [""], allowedInputMode: .plain) { (result) in
            if let choice = result {
                let answerGiven = (choice[0] as! String).lowercased()
                if(self.questionModel[self.currentIndex].answers.contains(answerGiven)) {
                    self.questionField.setText("CORRECT!")
                    self.numberCorrect += 1
                } else {
                    self.questionField.setText("WRONG!")
                    self.numberWrong += 1
                }
            }
                self.currentIndex += 1
                 self.nextButton.setHidden(false)
        }
        
    }
    
    func checkAnswer(questionSet: Answer, answer: String) {
        
    }
}
