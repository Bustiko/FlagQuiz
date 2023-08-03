//
//  UIFunctions.swift
//  FlagQuiz
//
//  Created by Buse Karabıyık on 2.08.2023.
//

import UIKit

struct UIFunctions {
    
    let fontName = "ChalkboardSE"
    
    internal func makeBigLabel(withText text: String) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont(name: "\(fontName)-Bold", size: 60)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        
        return label
    }
    
    internal func makeLabel(withText text: String, fontSize: CGFloat) -> UILabel {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = text
        label.font = UIFont(name: "\(fontName)-Regular", size: fontSize)
        label.numberOfLines = 0
        label.adjustsFontSizeToFitWidth = true
        
        return label
        
    }
    
    internal func makeTextField(withPlaceholder placeholder: String) -> UITextField {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = placeholder
        textField.font = UIFont(name: "\(fontName)-Regular", size: 14)
        textField.textAlignment = .left
        textField.borderStyle = .roundedRect
        
        return textField
    }
    
    
    internal func makeButton(withText text: String) -> UIButton {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle(text, for: .normal)
        button.titleLabel?.textColor = .white
        
        var config = UIButton.Configuration.filled()
        config.cornerStyle = .capsule
        config.contentInsets = NSDirectionalEdgeInsets(top: 8, leading: 16, bottom: 8, trailing: 16)
        button.configuration = config
        
        
        return button
    }
    
    internal func makeProgressView() -> UIProgressView {
        let progressView = UIProgressView()
        progressView.translatesAutoresizingMaskIntoConstraints = false
        progressView.progress = 0
        
        return progressView
    }
    
    internal func makeImageView(withImage imageName: String) -> UIImageView {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.image = UIImage(named: imageName)
        
        return imageView
    }
}
