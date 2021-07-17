//
//  ViewController.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PackingViewController: UIViewController {

    private lazy var contentView: PackingView = PackingView(presentPickingTarget: self, presentPickingSelector: #selector(loadPickingViewController))
    
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
        showDetailViewController(vc, sender: nil)
    }
    
    // This decouples presentation logic and leaves it up to the implementor
    // using this method is an example of decoupling, but in our contrived example,
    // isn't really decoupling anything since we're doing the presentation locally
    // this is especially useful in frameworks and other decoupled modules
    override func showDetailViewController(_ vc: UIViewController, sender: Any?) {
        navigationController?.pushViewController(vc, animated: true)
    }
}
