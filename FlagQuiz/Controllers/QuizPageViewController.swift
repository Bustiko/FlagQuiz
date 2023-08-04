//
//  QuizPageViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit


var heartsLeft = 3
var progress: Float = 0.0

class QuizPageViewController: UIViewController {

    private var uiFunctions = QuizPageUIFunctions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        uiFunctions.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    
    @objc func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel?.text == uiFunctions.rightAnswerButton.titleLabel?.text {
            print("correct answer")
            
            progress += 0.1
            trackProgress()
            
            let destinationVC = QuizPageViewController()
            destinationVC.modalPresentationStyle = .fullScreen
            
            self.present(destinationVC, animated: false, completion: nil)
            
        } else {
            heartsLeft -= 1
            DispatchQueue.main.async {
                self.uiFunctions.heartsLabel.text = "\(heartsLeft) ❤️"
            }
            
        }
    }
    
    
    func trackProgress() {
        
        if Int(progress*10) == 10 {
            
            let finalDestinationVC = ScorePageViewController()
            finalDestinationVC.modalPresentationStyle = .fullScreen
            
            self.present(finalDestinationVC, animated: true, completion: nil)
            
        }
    }
    
    
    
    
}
