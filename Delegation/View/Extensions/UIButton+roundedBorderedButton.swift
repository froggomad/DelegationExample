//
//  UIButton+roundedBorderedButton.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

extension UIButton {
    static func roundedBordered(text: String, with target: Any? = nil, selector: Selector? = nil, color: UIColor = .systemBlue, height: CGFloat = 44, cornerRadius: CGFloat = 10, borderWidth: CGFloat = 1) -> UIButton {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = cornerRadius
        button.frame.size.height = height
        
        button.layer.borderColor = color.cgColor
        button.layer.borderWidth = borderWidth
        button.setTitle(text, for: .normal)
        
        guard let target = target,
              let selector = selector
        else { return button }
        
        button.addTarget(target, action: selector, for: .touchUpInside)
        
        return button
    }
}
