//
//  ViewController.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PackingViewController: UIViewController {

    private var contentView: PackingView = PackingView(presentPickingTarget: self, presentPickingSelector: #selector(loadPickingViewController))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
    
    private func setupViews() {
        title = "Let's Go On Vacation!"
    }
    
    override func loadView() {
        view = contentView
    }
    
    @objc private func loadPickingViewController() {
        let vc = PickingViewController()
        present(vc, animated: true)
    }
}
