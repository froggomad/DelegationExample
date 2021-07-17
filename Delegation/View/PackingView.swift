//
//  PackingView.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PackingView: UIView {
    
    private var presentPickingTarget: Any
    private var presentPickingSelector: Selector
    
    private lazy var contentStack: UIStackView = .contentStack(views: [titleLabel, instructionLabel, button])
    
    private lazy var titleLabel: UILabel = .makeFactoryLabel(using: .headline, with: "Let's Pack!")
    
    private lazy var instructionLabel: UILabel = .makeFactoryLabel(using: .subheadline, with: "Remember, pack only what you need, no need to bring the entire house...")
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.layer.cornerRadius = 10
        button.frame.size.height = 44
        
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.borderWidth = 1
        button.setTitle("Start Packing!", for: .normal)
        button.addTarget(presentPickingTarget, action: presentPickingSelector, for: .touchUpInside)
        
        return button
    }()
    
    init(presentPickingTarget: Any, presentPickingSelector: Selector) {
        self.presentPickingTarget = presentPickingTarget
        self.presentPickingSelector = presentPickingSelector
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
        layoutContentStack()
        NSLayoutConstraint.activate([
            contentStack.topAnchor.constraint(equalTo: centerYAnchor, constant: -contentStack.frame.height/2),
            contentStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -20),
            contentStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20),
            contentStack.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
    }
    /// Layout `contentStack` in order to use its size information before subviews are laid out
    private func layoutContentStack() {
        contentStack.setNeedsLayout()
        contentStack.layoutIfNeeded()
    }
    
}
