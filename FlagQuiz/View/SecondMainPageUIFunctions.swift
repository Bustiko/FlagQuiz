//
//  SecondMainPageUIFunctions.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import UIKit

struct SecondMainPageUIFunctions {
    
    private let uiFunctions = UIFunctions()
    
    internal func setupViews(on view: UIView, target: Any?, action: Selector?) {
        
        let label = uiFunctions.makeLabel(withText: "Welcome Back User!", fontSize: 30)
        label.textAlignment = .center
        
        let bigLabel = uiFunctions.makeBigLabel(withText: "Flag Quiz")
        let button = uiFunctions.makeButton(withText: "START")
        
        view.addSubview(label)
        view.addSubview(bigLabel)
        view.addSubview(button)
        
        NSLayoutConstraint.activate([
            label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            label.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            label.bottomAnchor.constraint(equalTo: bigLabel.topAnchor, constant: -80),
            
            bigLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            bigLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            
            button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -40),
            button.heightAnchor.constraint(equalToConstant: 60)
        ])
        
        if let safeTarget = target, let safeAction = action {
            button.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
        }
        
    }
}
