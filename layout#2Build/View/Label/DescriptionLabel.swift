//
//  DescriptionLabel.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class DescriptionLabel: UILabel {

    let labelText: String
    let color: UIColor
    let fontSize: CGFloat
    
    init(labelText: String, color: UIColor = .gray, fontSize: CGFloat = 13) {
        self.labelText = labelText
        self.color = color
        self.fontSize = fontSize
        
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        
        setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupLabel() {
        self.text = labelText
        self.textColor = color
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .regular)
        self.numberOfLines = 0
    }
    
}
