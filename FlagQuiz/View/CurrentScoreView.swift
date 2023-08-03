//
//  CurrentScoreView.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import UIKit

class CurrentScoreView: UIView {
    
    var currentScore: Int
    var uiFunctions = UIFunctions()
    
    init(currentScore: Int) {
        self.currentScore = currentScore
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupViews() {
        let label = uiFunctions.makeLabel(withText: "Your Score", fontSize: 25)
        label.textAlignment = .center
        let score = uiFunctions.makeLabel(withText: "\(currentScore)", fontSize: 50)
        score.textAlignment = .center
        
        self.addSubview(label)
        self.addSubview(score)
        
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: self.topAnchor, constant: 46),
            label.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            label.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            
            score.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 8),
            score.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            score.leadingAnchor.constraint(equalTo: self.leadingAnchor)
        ])
        
    }

}
