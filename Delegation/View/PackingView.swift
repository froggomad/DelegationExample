//
//  PackingView.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PackingView: UIView {
    
    private lazy var contentStack: UIStackView = {
        let stack = UIStackView(arrangedSubviews: [titleLabel, instructionLabel, button])
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 12
        return stack
    }()
    
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 1
        label.font = .preferredFont(forTextStyle: .headline)
        label.text = "Let's Pack!"
        return label
    }()
    
    private lazy var instructionLabel: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.text = "Remember, pack only what you need, no need to bring the entire house..."
        label.font = .preferredFont(forTextStyle: .subheadline)
        return label
    }()
    
    private lazy var button: UIButton = {
        let button = UIButton(type: .system)
        button.layer.borderColor = UIColor.systemBlue.cgColor
        button.layer.borderWidth = 1        
        button.layer.cornerRadius = 10
        button.frame.size.height = 44
        button.setTitle("Start Packing!", for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
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
