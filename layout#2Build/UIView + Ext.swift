//
//  UIView + Ext.swift
//  layout#2Build
//
//  Created by Алексей Колыченков on 25.08.2024.
//

import UIKit

extension UIView {

    func addSubviews(_ subviews: UIView...) {
        subviews.forEach { subview in
            addSubview(subview)
        }
    }
}
