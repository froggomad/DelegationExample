//
//  UILabel+FactoryLabel.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

extension UILabel {

    enum FactoryLabel {
        case headline
        case subheadline
        
        var standardLabel: UILabel {
            switch self {
            case .headline:
                return label(with: .preferredFont(forTextStyle: .headline), numLines: 1)
            case .subheadline:
                return label(with: .preferredFont(forTextStyle: .subheadline), numLines: 0)
            }
        }
        
        private func label(with font: UIFont, numLines: Int) -> UILabel {
            let label = UILabel()
            label.numberOfLines = numLines
            label.font = font
            return label
        }
    }
    
    static func makeFactoryLabel(using type: FactoryLabel, with text: String? = nil) -> UILabel {
        let label = type.standardLabel
        label.text = text
        return label
    }
    
}
