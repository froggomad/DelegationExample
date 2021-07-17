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
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
    }
    
    override func loadView() {
        super.loadView()
        view = pickingView
    }
}
