//
//  HeaderCardModel.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 23.08.2024.
//

import Foundation

struct HeaderCardModel {
    let mainTitle: String
    let descrTitle: String
    
    static func mocData() -> [HeaderCardModel] {
        [
        HeaderCardModel(mainTitle: "Купить", descrTitle: "Подберем подходящий объект"),
        HeaderCardModel(mainTitle: "Продать", descrTitle: "Сами найдем покупателя")
        ]
    }
}
