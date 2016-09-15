//
//  Answer.swift
//  SpanishQuiz
//
//  Created by Gabriele on 9/14/16.
//  Copyright © 2016 Gabriele. All rights reserved.
//

import Foundation

class Model: NSObject {
    var questionSets: [Answer] = []
    
    func getQuestionSet() -> [Answer] {
        let question1 = Answer(question: "Rojo", answers: ["red"])
        questionSets.append(question1)
        return questionSets
    }
}

struct Answer {
    var question: String?
    var answers: [String]
}
