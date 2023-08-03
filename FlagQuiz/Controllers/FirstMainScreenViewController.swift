//
//  ViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class FirstMainScreenViewController: UIViewController {
    
    let uiFunctions = MainScreenUIFunctions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        uiFunctions.setupViews(on: view, target: self, action: #selector(startButtonPressed))
    }
    
    @objc func startButtonPressed() {
        let destinationVC = QuizPageViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        self.present(destinationVC, animated: true, completion: nil)
    }


}

