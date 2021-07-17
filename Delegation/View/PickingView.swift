//
//  PickingView.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PickingView: UIView {
    
    private lazy var contentStack: UIStackView = .contentStack(views: [titleLabel, instructionLabel])
    
    private lazy var titleLabel: UILabel = .makeFactoryLabel(using: .headline, with: "Pick Items")
    
    private lazy var instructionLabel: UILabel = .makeFactoryLabel(using: .subheadline, with: "Tap done when you're finished.")
    
    init() {
        super.init(frame: .zero)
        setupViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("programmatic view")
    }
    
    private func setupViews() {
        backgroundColor = .systemBackground
        addSubview(contentStack)
        constraints()
    }
    
    private func constraints() {
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20),
            contentStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            contentStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            contentStack.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
}
