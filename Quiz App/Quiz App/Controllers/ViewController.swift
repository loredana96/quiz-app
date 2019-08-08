//
//  ViewController.swift
//  Quiz App
//
//  Created by Loredana Todoran on 08/08/2019.
//  Copyright © 2019 Loredana Todoran. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = Questionbank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
        
    }
    
    @IBAction func answerPressed(_ sender: UIButton) {
        if sender.tag == 1 {
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        
        questionNumber = questionNumber + 1
        nextQuestion()
        
    }
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        
        if correctAnswer == pickedAnswer {
            print("Excellent")
        } else {
            print ("wrong")
        }
    }
    
    func nextQuestion() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        } else {
            questionNumber = 0
        }
        
    }
    
}

