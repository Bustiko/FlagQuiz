//
//  TrackProgressLogic.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 4.08.2023.
//

import UIKit

struct TrackProgressLogic {
    
    static func trackProgress(uiVC: UIViewController) {
        if Int(progress*10) == 10 {
            
            let finalDestinationVC = ScorePageViewController()
            finalDestinationVC.modalPresentationStyle = .fullScreen
            
            uiVC.present(finalDestinationVC, animated: true, completion: nil)
        }
    }
    
    static func trackHearts(uiVC: UIViewController) {
        if heartsLeft == 0 {
            
            let finalDestinationVC = ScorePageViewController()
            finalDestinationVC.modalPresentationStyle = .fullScreen
            
            uiVC.present(finalDestinationVC, animated: true, completion: nil)
        }
    }
}
