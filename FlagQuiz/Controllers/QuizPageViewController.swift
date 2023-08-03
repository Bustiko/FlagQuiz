//
//  QuizPageViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit



class QuizPageViewController: UIViewController {

    var uiFunctions = QuizPageUIFunctions()
    var playerCredentials = PlayerCredentials()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        uiFunctions.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    
    
    @objc func buttonPressed(_ sender: UIButton) {
        if sender.titleLabel?.text == uiFunctions.rightAnswerButton.titleLabel?.text {
            print("correct answer")
            let destinationVC = QuizPageViewController()
            destinationVC.modalPresentationStyle = .fullScreen
            destinationVC.uiFunctions.heartsLabel.text = "\(playerCredentials.heartsLeft) ❤️"
            self.present(destinationVC, animated: false, completion: nil)
        } else {
            playerCredentials.heartsLeft -= 1
            DispatchQueue.main.async {
                self.uiFunctions.heartsLabel.text = "\(self.playerCredentials.heartsLeft) ❤️"
            }
            
        }
        
    }
    
    
    
    
}
