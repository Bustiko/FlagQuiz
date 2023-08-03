//
//  ScorePageViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class ScorePageViewController: UIViewController {
    
    var uiFunctions = UIFunctions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let wellDoneLabel = uiFunctions.makeLabel(withText: "Well Done User!", fontSize: 30)
        wellDoneLabel.textAlignment = .center
        
        let scoreView = CurrentScoreView(currentScore: 7)
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        
        let bestScoreLabel = uiFunctions.makeLabel(withText: "⭐️Best Score: 7", fontSize: 25)
        
        let playAgainButton = uiFunctions.makeButton(withText: "Play Again")
        let mainMenuButton = uiFunctions.makeButton(withText: "Main Menu")
        
        view.addSubview(wellDoneLabel)
        view.addSubview(scoreView)
        view.addSubview(bestScoreLabel)
        
        NSLayoutConstraint.activate([
            wellDoneLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            wellDoneLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            wellDoneLabel.bottomAnchor.constraint(equalTo: scoreView.topAnchor, constant: -40),
            wellDoneLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            
            scoreView.widthAnchor.constraint(equalToConstant: 360),
            scoreView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            scoreView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            scoreView.heightAnchor.constraint(equalToConstant: 198),
            scoreView.bottomAnchor.constraint(equalTo: bestScoreLabel.topAnchor, constant: -75),
            
            bestScoreLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bestScoreLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            bestScoreLabel.bottomAnchor.constraint(equalTo: playAgainButton.topAnchor, constant: -110),
            
            playAgainButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            playAgainButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            playAgainButton.heightAnchor.constraint(equalToConstant: 60),
            playAgainButton.bottomAnchor.constraint(equalTo: mainMenuButton.topAnchor, constant: -16),
            
            mainMenuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            mainMenuButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            mainMenuButton.heightAnchor.constraint(equalToConstant: 60)
            
    
        ])
        
    }
    
    
    
}
