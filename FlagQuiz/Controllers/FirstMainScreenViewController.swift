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
    var userDataManager = UserDataManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        uiFunctions.setupViews(on: view, target: self, action: #selector(startButtonPressed))
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        
        if let userName = userDataManager.fetchUserName(), !userName.isEmpty {
                print(userName)
                let destination = SecondMainScreenViewController()
                destination.modalPresentationStyle = .fullScreen
                self.present(destination, animated: false, completion: nil)
        }
        
    }
    
    @objc func startButtonPressed() {
        let destinationVC = QuizPageViewController()
        destinationVC.modalPresentationStyle = .fullScreen
        
        if let name = uiFunctions.getTextField().text, !name.isEmpty {
            userName = name
            userDataManager.manageData(name: name, bestScore: 8)
            self.present(destinationVC, animated: true, completion: nil)
        }else {
            DispatchQueue.main.async {
                self.uiFunctions.getNameFieldLabel().text = "❗️Please Enter a Username to Continue"
                self.uiFunctions.getNameFieldLabel().font = UIFont(name: "ChalkboardSE-Regular" , size: 20)
            }
        }
    }


}

