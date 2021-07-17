//
//  PickingViewController.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PickingViewController: UIViewController {
    
    private lazy var pickingView: PickingView = PickingView()
    
    override func viewDidLoad() {
        let action = UIAction(handler: { [unowned self] _ in
            self.done()
        })
        let barbuttonItem = UIBarButtonItem(systemItem: .done, primaryAction: action)
        navigationItem.rightBarButtonItem = barbuttonItem
    }
    
    override func loadView() {
        super.loadView()
        view = pickingView
    }
    
    @objc func done() {
        navigationController?.popViewController(animated: true)
    }
}
