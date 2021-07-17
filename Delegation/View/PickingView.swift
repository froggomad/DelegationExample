//
//  PickingView.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PickingView: UIView {
    
    weak var dataSource: UITableViewDataSource?
    weak var tableViewDelegate: UITableViewDelegate?
    
    private lazy var contentStack: UIStackView = .contentStack(views: [titleLabel, instructionLabel, tableView])
    
    private lazy var titleLabel: UILabel = .makeFactoryLabel(using: .headline, with: "Pick Items")
    
    private lazy var instructionLabel: UILabel = .makeFactoryLabel(using: .subheadline, with: "Tap done when you're finished.")
    
    private lazy var tableView: UITableView = {
        let tv = UITableView()
        tv.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tv.delegate = tableViewDelegate
        tv.dataSource = dataSource
        return tv
    }()
    
    init(dataSource: UITableViewDataSource?, tableViewDelegate: UITableViewDelegate?) {
        self.dataSource = dataSource
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
            contentStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -20),
            contentStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
    }
}
