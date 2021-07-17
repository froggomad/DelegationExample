//
//  PickingViewController.swift
//  Delegation
//
//  Created by Kenneth Dubroff on 7/17/21.
//

import UIKit

class PickingViewController: UIViewController {
    
    var selectedItems: [Int: SuitcaseItem] = [:]
    
    private lazy var pickingView: PickingView = PickingView(dataSource: self, tableViewDelegate: self)
    
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

extension PickingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        SuitcaseItem.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")!
        cell.textLabel?.text = SuitcaseItem.items[indexPath.row].title
        return cell
    }
    
}

extension PickingViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if let item = selectedItems[indexPath.row] { // remove existing item
            selectedItems.removeValue(forKey: indexPath.row)
            print("removed \(item.title)")
        } else { // add new item
            let item = SuitcaseItem.items[indexPath.row]
            selectedItems[indexPath.row] = item
            print("added \(item.title)")
        }
        
    }
}
