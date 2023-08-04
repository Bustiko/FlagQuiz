//
//  SecondMainScreenViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class SecondMainScreenViewController: UIViewController {
    
    var uiFunctions = SecondMainPageUIFunctions()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        uiFunctions.setupViews(on: view, target: self, action: #selector(startButtonPressed))
    }
    
    @objc func startButtonPressed() {
        progress = 0
        heartsLeft = 3
        
        let destinationVC = QuizPageViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true, completion: nil)
    }
}
