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
    
    internal func setupViews(on view: UIView, target: Any?, action: Selector?) {
        let heartsLabel = uiFunctions.makeLabel(withText: "3 ♥️", fontSize: 25)
        let progressView = uiFunctions.makeProgressView()
        let progressLabel = uiFunctions.makeLabel(withText: "0/10", fontSize: 20)
        let imageView = uiFunctions.makeImageView(withImage: "Flag-Norway")
        let button1 = uiFunctions.makeButton(withText: "Norway")
        let button2 = uiFunctions.makeButton(withText: "Ireland")
        let button3 = uiFunctions.makeButton(withText: "Spain")
        let button4 = uiFunctions.makeButton(withText: "Netherlands")
        
        view.addSubview(heartsLabel)
        view.addSubview(progressView)
        view.addSubview(progressLabel)
        view.addSubview(imageView)
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        view.addSubview(button4)
        
        
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
            button3.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100),
            
            button4.widthAnchor.constraint(equalToConstant: 172),
            button4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button4.heightAnchor.constraint(equalToConstant: 62),
            button4.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 16),
            button4.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -100)
        ])
        
        if let safeAction = action, let safeTarget = target {
            button1.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
        }
        
        
    }
}