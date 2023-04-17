//
//  ViewController.swift
//  xcgendemo
//
//  Created by 伯爵奶茶全糖去冰 on 2021/1/22.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let label = UILabel()
        label.text = "XCConfig File : \(Config.App.mode.configName)"
        view.addSubview(label)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -100).isActive = true
        label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        view.backgroundColor = .white
        let presentButton = UIButton(type: .system)
        presentButton.setTitle("Present Objc VC", for: [])
        view.addSubview(presentButton)
        presentButton.translatesAutoresizingMaskIntoConstraints = false
        presentButton.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        presentButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        presentButton.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }

    @objc func tapButton() {
        present(ViewControllerObjc(), animated: true)
    }
}
