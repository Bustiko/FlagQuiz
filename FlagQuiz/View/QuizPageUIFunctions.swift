//
//  QuizPageUIFunctions.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import UIKit

struct QuizPageUIFunctions {
    
    var uiFunctions = UIFunctions()
    private let leftRightMargin: CGFloat = 16
    var countries = FlagManager().countries
    var randomCountryName = ""
    var rightAnswerButton = UIButton()
    var heartsLabel = UILabel()
    var buttons: [UIButton] = []
    var choices: [String] = []
    let totalButtonNumber = 5

    internal mutating func setupViews(on view: UIView, target: Any?, action: Selector?) {
    
        randomCountryName = countries.randomElement()!
        let index = countries.firstIndex(of: randomCountryName)!
        countries.remove(at: index)

        for _ in 0...totalButtonNumber {
            let randomCountry = countries.randomElement()!
            let index = countries.firstIndex(of: randomCountry)!
            countries.remove(at: index)
            choices.append(randomCountry)
        }
        
        heartsLabel = uiFunctions.makeLabel(withText: "\(heartsLeft) ♥️", fontSize: 25)
        let progressView = uiFunctions.makeProgressView()
        progressView.progress = progress
        let progressLabel = uiFunctions.makeLabel(withText: "\(Int(progress*10))/10", fontSize: 20)
        let imageView = uiFunctions.makeImageView(withImage: randomCountryName)
        
        view.addSubview(heartsLabel)
        view.addSubview(progressView)
        view.addSubview(progressLabel)
        view.addSubview(imageView)
        
        for x in 0...totalButtonNumber {
            let button = uiFunctions.makeButton(withText: choices[x])
            buttons.append(button)
            view.addSubview(buttons[x])
            if let safeAction = action, let safeTarget = target {
                buttons[x].addTarget(safeTarget, action: safeAction, for: .touchUpInside)
            }
        }
        
        selectButton()
        
        NSLayoutConstraint.activate([
            heartsLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            heartsLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -leftRightMargin),
            
            progressView.topAnchor.constraint(equalTo: heartsLabel.bottomAnchor, constant: 25),
            progressView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: leftRightMargin),
            progressView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -leftRightMargin),
            
            progressLabel.topAnchor.constraint(equalTo: progressView.bottomAnchor, constant: 10),
            progressLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -leftRightMargin),
            
            imageView.topAnchor.constraint(equalTo: progressLabel.bottomAnchor, constant: 70),
            imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -leftRightMargin),
            imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor , constant: leftRightMargin),
            imageView.heightAnchor.constraint(equalToConstant: 220)
        ])
        
        for x in 0...totalButtonNumber {
            
            buttons[x].widthAnchor.constraint(equalToConstant: 172).isActive = true
            buttons[x].heightAnchor.constraint(equalToConstant: 62).isActive = true
            
            if x % 2 == 0 {
                buttons[x].leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16).isActive = true
                
            } else {
                buttons[x].trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16).isActive = true
            }
            
            if x < 2 {
                buttons[x].topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120).isActive = true
                buttons[x].bottomAnchor.constraint(equalTo: buttons[x+2].topAnchor, constant: -16).isActive = true
            } else {
                buttons[x].topAnchor.constraint(equalTo: buttons[x-2].bottomAnchor, constant: 16).isActive = true
            }
        }
    }
    
    mutating func selectButton() {
        let randomInt = Int.random(in: 0...totalButtonNumber)
        
        for x in 0...totalButtonNumber {
            if x == randomInt {
                rightAnswerButton = buttons[x]
            }
        }
        
        updateButtonTitle(button: rightAnswerButton)
    }
    
    func updateButtonTitle(button: UIButton) {
        DispatchQueue.main.async {
            button.titleLabel?.text = randomCountryName
        }
    }
}
