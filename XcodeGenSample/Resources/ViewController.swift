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
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 200, height: 100))
        label.text = "Config File:\(Config.App.mode)"
        view.addSubview(label)
        view.backgroundColor = .white
        let presentButton = UIButton.init(type: .system)
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
        present(ViewControllerObjc.init(), animated: true)
    }
}
