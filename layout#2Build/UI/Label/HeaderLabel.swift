//
//  HeaderLabel.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class HeaderLabel: UILabel {
    
    var labelText: String
    var color: UIColor
    var fontSize: CGFloat

    init(labelText: String, color: UIColor = .black, fontSize: CGFloat) {
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
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        self.textColor = color
        self.numberOfLines = 0
    }
 
}
