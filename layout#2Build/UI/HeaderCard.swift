//
//  HeaderCard.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class HeaderCard: UIView {

    let headerText: String
    let descriptText: String
    
    private lazy var headerCardLabel: UILabel = HeaderLabel(labelText: headerText, fontSize: 16)
    private lazy var descrLabel: UILabel = DescriptionLabel(labelText: descriptText)
    private let cardBtn: UIButton = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.setImage(UIImage(systemName: "chevron.right"), for: .normal)
        $0.tintColor = .gray
        $0.widthAnchor.constraint(equalToConstant: 7).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 10).isActive = true
        return $0
    }(UIButton())
    
    init(headerText: String, descriptText: String) {
        self.headerText = headerText
        self.descriptText = descriptText
        super.init(frame: .zero)
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = .white
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: 135).isActive = true
        layer.cornerRadius = 10
        addSubview(headerCardLabel)
        addSubview(descrLabel)
        addSubview(cardBtn)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerCardLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            headerCardLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            headerCardLabel.topAnchor.constraint(equalTo: topAnchor, constant: 14),
            
            cardBtn.centerYAnchor.constraint(equalTo: headerCardLabel.centerYAnchor),
            cardBtn.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -17.5),
            
            descrLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            descrLabel.topAnchor.constraint(equalTo: headerCardLabel.bottomAnchor, constant: 4),
            
//            descrLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50)
            descrLabel.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.5)
        ])
    }
    
}
