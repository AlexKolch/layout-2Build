//
//  ViewController.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var scrollView: UIScrollView = {
        $0.addSubview(scrollViewContent)
        $0.alwaysBounceVertical = true
        
        return $0
    }(UIScrollView(frame: view.frame))
    
    private lazy var scrollViewContent: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.addSubviews(blueCoverView, serviceLabel, serviceCard, serviceStack, developmentLabel, apartmentView)
        return $0
    }(UIView())
    
    private let logoImage: UIImageView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.image = .logo
        $0.widthAnchor.constraint(equalToConstant: 180).isActive = true
        $0.heightAnchor.constraint(equalToConstant: 60).isActive = true
        $0.contentMode = .scaleToFill
        return $0
    }(UIImageView())
    
    private lazy var blueCoverView: UIView = {
        $0.translatesAutoresizingMaskIntoConstraints = false
        $0.backgroundColor = .appBlue
        $0.addSubviews(logoImage, appHeaderLabel, cartStack)
        return $0
    }(UIView())
    
    private let appHeaderLabel: UILabel = HeaderLabel(labelText: "Сервис квартирных решений от сделки до отделки", color: .white, fontSize: 24)
    private let serviceLabel: UILabel = HeaderLabel(labelText: "Услуги", fontSize: 24)
    private let serviceCard: UIView = ServiceCard(color: .appPurple, titleText: "Страхование", decrpText: "Защитите имущество\nздоровье и жизнь")

    private lazy var cartStack: UIStackView = getStack()
    private lazy var serviceStack: UIStackView = getStack()
    
    private lazy var developmentLabel: UILabel = HeaderLabel(labelText: "Жилые комплексы", fontSize: 24)
    private let apartmentView: UIView = ApartmentCard(title: "Ольховый квартал\nот 8 029 445 ₽", descrp: "Москва, поселение Сосенское, деревня Столбово", image: .img1)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(scrollView)
        
        HeaderCardModel.mocData().forEach { item in
            let cart = HeaderCard(headerText: item.mainTitle, descriptText: item.descrTitle)
            cartStack.addArrangedSubview(cart)
        }
        
        ServicesCardModel.mocData().forEach { item in
            let cart = ServiceCard(color: item.color, titleText: item.mainTitle, decrpText: item.descrTitle)
            serviceStack.addArrangedSubview(cart)
        }
        
        setConstraints()
    }
    
    private func getStack() -> UIStackView {
        {
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.axis = .horizontal
            $0.distribution = .fillEqually
            $0.alignment = .fill
            $0.spacing = 8
            return $0
        }(UIStackView())
    }

    private func setConstraints() {
        NSLayoutConstraint.activate([
            scrollViewContent.topAnchor.constraint(equalTo: scrollView.topAnchor),
            scrollViewContent.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            scrollViewContent.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            scrollViewContent.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            scrollViewContent.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            
            blueCoverView.topAnchor.constraint(equalTo: view.topAnchor),
            blueCoverView.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor),
            blueCoverView.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor),
            
            logoImage.topAnchor.constraint(equalTo: scrollViewContent.safeAreaLayoutGuide.topAnchor, constant: -8),
            logoImage.leadingAnchor.constraint(equalTo: blueCoverView.leadingAnchor, constant: -15),
            
            appHeaderLabel.topAnchor.constraint(equalTo: logoImage.bottomAnchor, constant: 5),
            appHeaderLabel.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: 20),
            appHeaderLabel.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -20),
            
            cartStack.topAnchor.constraint(equalTo: appHeaderLabel.bottomAnchor, constant: 20),
            cartStack.leadingAnchor.constraint(equalTo: blueCoverView.leadingAnchor, constant: 30),
            cartStack.trailingAnchor.constraint(equalTo: blueCoverView.trailingAnchor, constant: -30),
            cartStack.bottomAnchor.constraint(equalTo: blueCoverView.bottomAnchor, constant: -30),
            
            serviceLabel.topAnchor.constraint(equalTo: blueCoverView.bottomAnchor, constant: 15),
            serviceLabel.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: 20),
            
            serviceCard.topAnchor.constraint(equalTo: serviceLabel.bottomAnchor, constant: 17),
            serviceCard.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: 20),
            serviceCard.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -20),
            
            serviceStack.topAnchor.constraint(equalTo: serviceCard.bottomAnchor, constant: 6),
            serviceStack.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: 20),
            serviceStack.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -20),
            
            developmentLabel.topAnchor.constraint(equalTo: serviceStack.bottomAnchor, constant: 20),
            developmentLabel.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: 20),
            developmentLabel.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -20),
            
            apartmentView.topAnchor.constraint(equalTo: developmentLabel.bottomAnchor, constant: 20),
            apartmentView.leadingAnchor.constraint(equalTo: scrollViewContent.leadingAnchor, constant: 20),
            apartmentView.trailingAnchor.constraint(equalTo: scrollViewContent.trailingAnchor, constant: -20),
            apartmentView.bottomAnchor.constraint(equalTo: scrollViewContent.bottomAnchor, constant: -20)
        ])
    }
}

