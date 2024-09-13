//
//  ApartmentCard.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 24.08.2024.
//

import UIKit

class ApartmentCard: UIView {
    
    let title: String
    let descrp: String
    let image: UIImage
    
    private lazy var cardImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = image
        $0.contentMode = .scaleAspectFill
        $0.layer.cornerRadius = 10
        return $0
    }(UIImageView())
    
    private lazy var cardLabel: UILabel = HeaderLabel(labelText: title, color: .white, fontSize: 14)
    private lazy var descrpLabel: UILabel = DescriptionLabel(labelText: descrp, color: .white, fontSize: 11)

    init(title: String, descrp: String, image: UIImage) {
        self.title = title
        self.descrp = descrp
        self.image = image
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false
        addSubviews(cardImage, cardLabel, descrpLabel)
        backgroundColor = .appPurple
        layer.cornerRadius = 10
        clipsToBounds = true
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            cardImage.topAnchor.constraint(equalTo: topAnchor),
            cardImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            cardImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            cardImage.heightAnchor.constraint(equalToConstant: 320),
            
            cardLabel.topAnchor.constraint(equalTo: cardImage.topAnchor, constant: 5),
            cardLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            cardLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            
            descrpLabel.topAnchor.constraint(equalTo: cardLabel.bottomAnchor, constant: 90),
            descrpLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 12),
            descrpLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -12),
            descrpLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -12)
        ])
    }
    
}
