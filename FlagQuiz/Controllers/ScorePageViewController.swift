//
//  ScorePageViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class ScorePageViewController: UIViewController {
    
    var uiFunctions = ScorePageUIFunctions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        uiFunctions.setupViews(on: view, target: self, actionOne: #selector(playAgainButtonPressed), actionTwo: #selector(mainMenuButtonPressed))
    }
    
    @objc func playAgainButtonPressed() {
        
        let destinationVC = QuizPageViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        progress = 0
        heartsLeft = 3
        
        self.present(destinationVC, animated: true)
        
    }
    
    @objc func mainMenuButtonPressed() {
        
        let destinationVC = SecondMainScreenViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        
        
        self.present(destinationVC, animated: true)
        
    }
    
    
    
    
}
