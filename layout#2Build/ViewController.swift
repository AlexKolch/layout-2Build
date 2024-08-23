//
//  ViewController.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private let logoImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .logo
        $0.widthAnchor.constraint(equalToConstant: 180).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 60).isActive = true
        $0.contentMode = .scaleToFill
        return $0
    }(UIImageView())
    
    private let blueCoverView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .appBlue
        return $0
    }(UIView())
    
    private let appHeaderLabel: UILabel = HeaderLabel(labelText: "Сервис квартирных решений от сделки до отделки", color: .white, fontSize: 24)
    private let serviceLabel: UILabel = HeaderLabel(labelText: "Услуги", fontSize: 24)
    private let cardView = HeaderCard(headerText: "Купить", descriptText: "Подберем подходящий объект")

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        view.addSubview(blueCoverView)
        blueCoverView.addSubview(logoImage)
        blueCoverView.addSubview(appHeaderLabel)
        blueCoverView.addSubview(cardView)
        
        setConstraints()
    }


    private func setConstraints() {
        NSLayoutConstraint.activate([
            blueCoverView.topAnchor.constraint(equalTo: view.topAnchor),
            blueCoverView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            blueCoverView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            
            logoImage.topAnchor.constraint(equalTo: blueCoverView.topAnchor, constant: 55),
            logoImage.leadingAnchor.constraint(equalTo: blueCoverView.leadingAnchor),
            
            appHeaderLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 15),
            appHeaderLabel.leadingAnchor.constraint(equalTo: blueCoverView.leadingAnchor, constant: 20),
            appHeaderLabel.trailingAnchor.constraint(equalTo: blueCoverView.trailingAnchor, constant: -20),
            
            cardView.topAnchor.constraint(equalTo: appHeaderLabel.bottomAnchor, constant: 34),
            cardView.leadingAnchor.constraint(equalTo: blueCoverView.leadingAnchor, constant: 30),
            cardView.trailingAnchor.constraint(equalTo: blueCoverView.trailingAnchor, constant: -30),
            cardView.bottomAnchor.constraint(equalTo: blueCoverView.bottomAnchor, constant: -30)
            
        ])
    }
}

