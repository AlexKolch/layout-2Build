//
//  ServiceCard.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class ServiceCard: UIView {
    
    let color: UIColor
    let titleText: String
    let decrpText: String
    
    private lazy var headerLabel = HeaderLabel(labelText: titleText, fontSize: 13)
    private lazy var descrpLabel = DescriptionLabel(labelText: decrpText, fontSize: 12)
    
    init(color: UIColor, titleText: String, decrpText: String) {
        self.color = color
        self.titleText = titleText
        self.decrpText = decrpText
        super.init(frame: .zero)
        self.translatesAutoresizingMaskIntoConstraints = false
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupView() {
        backgroundColor = color
//        heightAnchor.constraint(equalToConstant: 95).isActive = true //закоментил, чтобы высота высчитывалась динамически
        layer.cornerRadius = 10
        addSubviews(headerLabel, descrpLabel)
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            headerLabel.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            headerLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            headerLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            
            descrpLabel.topAnchor.constraint(equalTo: headerLabel.bottomAnchor, constant: 5),
            descrpLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 18),
            descrpLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -18),
            descrpLabel.heightAnchor.constraint(greaterThanOrEqualToConstant: 32),
            descrpLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -23)
        ])
    }
    
}
