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
        showDetailViewController(vc, sender: nil)
    }
    
    override func showDetailViewController(_ vc: UIViewController, sender: Any?) {        
        if let navC = navigationController {
            navC.pushViewController(vc, animated: true)
        } else {
            present(vc, animated: true)
        }
    }
}
