//
//  QuizPageUIFunctions.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import UIKit

struct QuizPageUIFunctions {
    
    private let uiFunctions = UIFunctions()
    private let leftRightMargin: CGFloat = 16
    let countries = FlagManager().countries
    var randomCountryName = ""
    var rightAnswerButton = UIButton()
    var heartsLabel = UILabel()
    
    
    var button1 = UIButton()
    var button2 = UIButton()
    var button3 = UIButton()
    var button4 = UIButton()
    
    internal mutating func setupViews(on view: UIView, target: Any?, action: Selector?) {
        
        randomCountryName = countries.randomElement()!
        
        heartsLabel = uiFunctions.makeLabel(withText: "\(heartsLeft) ♥️", fontSize: 25)
        let progressView = uiFunctions.makeProgressView()
        progressView.progress = progress
        let progressLabel = uiFunctions.makeLabel(withText: "\(Int(progress*10))/10", fontSize: 20)
        let imageView = uiFunctions.makeImageView(withImage: randomCountryName)
        button1 = uiFunctions.makeButton(withText: countries.randomElement()!)
        button2 = uiFunctions.makeButton(withText: countries.randomElement()!)
        button3 = uiFunctions.makeButton(withText: countries.randomElement()!)
        button4 = uiFunctions.makeButton(withText: countries.randomElement()!)
        
        view.addSubview(heartsLabel)
        view.addSubview(progressView)
        view.addSubview(progressLabel)
        view.addSubview(imageView)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        
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
            imageView.heightAnchor.constraint(equalToConstant: 220),
            
            button1.widthAnchor.constraint(equalToConstant: 172),
            button1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button1.heightAnchor.constraint(equalToConstant: 62),
            button1.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            button1.bottomAnchor.constraint(equalTo: button3.topAnchor, constant: -16),
            
            button2.widthAnchor.constraint(equalToConstant: 172),
            button2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button2.heightAnchor.constraint(equalToConstant: 62),
            button2.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 120),
            button2.bottomAnchor.constraint(equalTo: button4.topAnchor, constant: -16),
            
            button3.widthAnchor.constraint(equalToConstant: 172),
            button3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button3.heightAnchor.constraint(equalToConstant: 62),
            button3.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 16),
            button3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
            
            button4.widthAnchor.constraint(equalToConstant: 172),
            button4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button4.heightAnchor.constraint(equalToConstant: 62),
            button4.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 16),
            button4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50)
        ])
        
        if let safeAction = action, let safeTarget = target {
            button1.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
            button2.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
            button3.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
            button4.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
        }
    }
    
    mutating func selectButton() {
        let randomInt = Int.random(in: 1...4)
        
        switch(randomInt) {
            
        case 1: rightAnswerButton = button1
        case 2: rightAnswerButton = button2
        case 3: rightAnswerButton = button3
        case 4: rightAnswerButton = button4
            
        default: break
        }
        
        updateButtonTitle(button: rightAnswerButton)
        
    }
    
    func updateButtonTitle(button: UIButton) {
        DispatchQueue.main.async {
            button.titleLabel?.text = randomCountryName
        }
    }
    
    
}
