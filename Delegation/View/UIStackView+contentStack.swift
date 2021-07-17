//
//  UIStackView+contentStack.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

extension UIStackView {
    static func contentStack(views: [UIView], spacing: CGFloat = 12) -> UIStackView {
        let stack = UIStackView(arrangedSubviews: views)
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = spacing
        return stack
    }
}
