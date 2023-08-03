//
//  ScorePageViewController.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

class ScorePageViewController: UIViewController {
    
    var uiFunctions = ScorePageUIFunctions()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        uiFunctions.setupViews(on: view)
    }
}
