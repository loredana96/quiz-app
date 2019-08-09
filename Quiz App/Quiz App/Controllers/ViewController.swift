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
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nextQuestion()
        
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
            ProgressHUD.showSuccess("Correct")
            score = score + 1
        } else {
            ProgressHUD.showError("Wrong!")
        }
    }
    
    func nextQuestion() {
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
            updateUI()
        } else {
            score = 0
            let alert = UIAlertController(title: "Awesome", message: "You've finished all the questions, do you want to start over?", preferredStyle: .alert)
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler:
            { (UIAlertAction) in self.startOver()
        })
        alert.addAction(restartAction)
        present(alert, animated: true, completion: nil)
        
    }
    
}

    func startOver() {
        questionNumber = 0
        nextQuestion()
    }
    func updateUI() {
        scoreLabel.text = "Score: \(score)"
        progressLabel.text = "\(questionNumber + 1) / 13"
        progressBar.setProgress(Float(questionNumber + 1)/13, animated: true)
        
    }
}
