//
//  ServicesCardModel.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 24.08.2024.
//

import UIKit

struct ServicesCardModel {
    let mainTitle: String
    let descrTitle: String
    let color: UIColor
    
    static func mocData() -> [ServicesCardModel] {
        [
            ServicesCardModel(mainTitle: "Оценка недвижимости", descrTitle: "Узнайте стоимость объекта недвижимости", color: .appGreen),
            ServicesCardModel(mainTitle: "Дизайн интерьера", descrTitle: "", color: .appPink),
        ]
    }
}
