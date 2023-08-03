//
//  QuizPageViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class QuizPageViewController: UIViewController {

    let uiFunctions = QuizPageUIFunctions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.white
        uiFunctions.setupViews(on: view, target: self, action: #selector(buttonPressed))
    }
    
    
    
    @objc func buttonPressed() {
//        let destinationVC = SecondMainScreenViewController()
//        destinationVC.modalPresentationStyle = .fullScreen
//        self.present(destinationVC, animated: true, completion: nil)
    }
    
    
    
    
}
