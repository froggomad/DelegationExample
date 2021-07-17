//
//  ViewController.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PackingViewController: UIViewController {

    private var contentView: PackingView = PackingView()
    
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
}
