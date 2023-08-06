//
//  BestScoreLogic.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 6.08.2023.
//

import Foundation

struct BestScoreLogic {
    private var userDataManager = UserDataManager()
    
    func findBestScore(){
        if Int(progress*10) > userDataManager.fetchBestScore()! {
            userDataManager.changeUserScore(newScore: Int(progress*10))
            print("best score after: \(Int(progress*10))")
        }
    }
}
