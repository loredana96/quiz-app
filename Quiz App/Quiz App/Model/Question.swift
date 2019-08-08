//
//  Question.swift
//  Quiz App
//
//  Created by Loredana Todoran on 08/08/2019.
//  Copyright © 2019 Loredana Todoran. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer : Bool
    
    init(text: String, correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
}
