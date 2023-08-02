//
//  ViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class FirstMainScreenViewController: UIViewController {
    
    private let uiFunctions = UIFunctions()
   


    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
    }
    
    func setupViews() {
        let title = uiFunctions.makeBigLabel(withText: "FLAG QUIZ")
        let descriptionLabel = uiFunctions.makeLabel(withText: "Enter your name here:")
        let nameTextField = uiFunctions.makeTextField(withPlaceholder: "Username")
        let button = uiFunctions.makeButton(withText: "START")
        
        view.addSubview(title)
        view.addSubview(descriptionLabel)
        view.addSubview(nameTextField)
        view.addSubview(button)
        
        title.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 100).isActive = true
        title.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        
        descriptionLabel.topAnchor.constraint(equalTo: title.bottomAnchor, constant: 100).isActive = true
        descriptionLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        
        nameTextField.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 25).isActive = true
        nameTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        nameTextField.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        
        button.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -20).isActive = true
        button.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        button.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10).isActive = true
        button.heightAnchor.constraint(equalToConstant: 40).isActive = true
        

    
    }


}

