//
//  MainScreenUIFunctions.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import UIKit

struct MainScreenUIFunctions {
    
    private let uiFunctions = UIFunctions()
    var nameTextField = UITextField()
    var descriptionLabel = UILabel()
    
    internal mutating func setupViews(on view: UIView, target: Any?, action: Selector?) {
        let title = uiFunctions.makeBigLabel(withText: "FLAG QUIZ")
        descriptionLabel = uiFunctions.makeLabel(withText: "Enter your name here:", fontSize: 25)
        nameTextField = uiFunctions.makeTextField(withPlaceholder: "Username")
        let button = uiFunctions.makeButton(withText: "START")
        
        view.addSubview(title)
        view.addSubview(descriptionLabel)
        view.addSubview(nameTextField)
        view.addSubview(button)
        
        title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        title.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 150).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 25).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        nameTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        button.heightAnchor.constraint(equalToConstant: 60).isActive = true
        
        if let safeTarget = target, let safeAction = action {
            button.addTarget(safeTarget, action: safeAction, for: .touchUpInside)
        }
        
    }
    
    func getTextField() -> UITextField {
        return nameTextField
    }
    
    func getNameFieldLabel() -> UILabel {
        return descriptionLabel
    }
    
    
}
