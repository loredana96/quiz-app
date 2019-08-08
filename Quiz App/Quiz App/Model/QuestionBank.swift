//
//  QuestionBank.swift
//  Quiz App
//
//  Created by Loredana Todoran on 08/08/2019.
//  Copyright © 2019 Loredana Todoran. All rights reserved.
//

import Foundation

class Questionbank {
    
    var list = [Question] ()
    
    init() {
        let item = Question (text: " 1+6 = 10", correctAnswer: false)
        list.append(item)
        list.append(Question(text: "20-8 = 12", correctAnswer: true))
        list.append(Question(text: "100-47= 53", correctAnswer: true))
        list.append(Question(text: "45+89= 138", correctAnswer: false))
        list.append(Question(text: "It is illegal to pee in the ocean of Portugual", correctAnswer: true))
        list.append(Question(text: "Aproximately one quarter of human bones are in the feet.", correctAnswer: true))
        list.append(Question(text: "Dogs have 10 legs.", correctAnswer: false))
        list.append(Question(text: "Up is the opposite of down.", correctAnswer: true))
        list.append(Question(text: "Sheep can't fly.", correctAnswer: true))
        list.append(Question(text: "Water is also called H2O.", correctAnswer: true))
        list.append(Question(text: "There are 10 zeros in the number 1 million.", correctAnswer: false))
        list.append(Question(text: "An adult human body has over 500 bones.", correctAnswer: false))
        list.append(Question(text: "Dogs are herbivores", correctAnswer: false))
    }
    
}
