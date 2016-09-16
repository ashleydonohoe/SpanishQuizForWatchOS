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
        let question2 = Answer(question: "Caliente", answers: ["hot", "warm"])
        let question3 = Answer(question: "Perro", answers: ["dog"])
        let question4 = Answer(question: "Cielo", answers: ["sky"])
        let question5 = Answer(question: "Casa", answers: ["house", "home"])
        questionSets.append(question1)
        questionSets.append(question2)
        questionSets.append(question3)
        questionSets.append(question4)
        questionSets.append(question5)
        return questionSets
    }
}

struct Answer {
    var question: String?
    var answers: [String]
}
