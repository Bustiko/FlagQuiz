//
//  ScorePageUIFunctions.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import UIKit

struct ScorePageUIFunctions {
    
    private let uiFunctions = UIFunctions()
    var userDataManager = UserDataManager()
    
    internal func setupViews(on view: UIView, target: Any?, actionOne: Selector?, actionTwo: Selector?) {
        let userName = (userDataManager.fetchUserName()!)
        
        let wellDoneLabel = uiFunctions.makeLabel(withText: "Well Done \(userName)!", fontSize: 30)
        wellDoneLabel.textAlignment = .center
        
        let noHeartsLabel = uiFunctions.makeLabel(withText: "No Hearts Left 💔", fontSize: 30)
        noHeartsLabel.textAlignment = .center
        
        if heartsLeft == 0 {
            wellDoneLabel.isHidden = true
        } else {
            noHeartsLabel.isHidden = true
        }
        
        let scoreView = CurrentScoreView(currentScore: 7)
        scoreView.translatesAutoresizingMaskIntoConstraints = false
        scoreView.backgroundColor = .gray
        
        let bestScoreLabel = uiFunctions.makeLabel(withText: "⭐️Best Score: 7", fontSize: 25)
        
        let playAgainButton = uiFunctions.makeButton(withText: "Play Again")
        let mainMenuButton = uiFunctions.makeButton(withText: "Main Menu")
        
        view.addSubview(wellDoneLabel)
        view.addSubview(noHeartsLabel)
        view.addSubview(scoreView)
        view.addSubview(bestScoreLabel)
        view.addSubview(playAgainButton)
        view.addSubview(mainMenuButton)
        
        
        NSLayoutConstraint.activate([
            wellDoneLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            wellDoneLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            wellDoneLabel.bottomAnchor.constraint(equalTo: scoreView.topAnchor, constant: -40),
            wellDoneLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            
            noHeartsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            noHeartsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            noHeartsLabel.bottomAnchor.constraint(equalTo: scoreView.topAnchor, constant: -40),
            noHeartsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            
            scoreView.widthAnchor.constraint(lessThanOrEqualToConstant: 360),
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
        
        if let safeAction = actionOne, let safeTarget = target {
            playAgainButton.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
        }
        
        if let safeAction = actionTwo, let safeTarget = target {
            mainMenuButton.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
        }
        
        
        
    }
}
