//
//  PlayerCredentials.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 3.08.2023.
//

import Foundation

struct PlayerCredentials {
    private var _heartsLeft = 3
    
    var heartsLeft: Int {
        get {return _heartsLeft}
        set {_heartsLeft = newValue}
    }
}
