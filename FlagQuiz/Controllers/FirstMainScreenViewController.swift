//
//  ViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class FirstMainScreenViewController: UIViewController {
    
    var uiFunctions = MainScreenUIFunctions()
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiFunctions.setupViews(on: view, target: self, action: #selector(startButtonPressed))
        
    }
    
    @objc func startButtonPressed() {
        let destinationVC = QuizPageViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        
        if let name = uiFunctions.getTextField().text, !name.isEmpty {
            userName = name
            self.present(destinationVC, animated: true, completion: nil)
            print(userName)
        }else {
            DispatchQueue.main.async {
                self.uiFunctions.getNameFieldLabel().text = "❗️Please Enter a Username to Continue"
                self.uiFunctions.getNameFieldLabel().font = UIFont(name: "ChalkboardSE-Regular" , size: 20)
            }
        }
    }


}

