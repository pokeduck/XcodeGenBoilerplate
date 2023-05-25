//
//  ViewController.swift
//  xcgendemo
//
//  Created by 伯爵奶茶全糖去冰 on 2021/1/22.
//

import Kingfisher
import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()

        let sampleImageView = UIImageView()
        view.addSubview(sampleImageView)
        sampleImageView.translatesAutoresizingMaskIntoConstraints = false
        sampleImageView.widthAnchor.constraint(equalToConstant: 100).isActive = true
        sampleImageView.heightAnchor.constraint(equalToConstant: 100).isActive = true
        sampleImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        sampleImageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
        sampleImageView.contentMode = .scaleAspectFit
        sampleImageView.kf.setImage(with: URL(string: "https://i.imgur.com/iKhAMMz.png"))

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
