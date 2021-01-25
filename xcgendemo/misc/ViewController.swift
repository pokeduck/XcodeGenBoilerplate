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
        let label = UILabel(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        label.text = "ABCD"
        view.addSubview(label)
        view.backgroundColor = .white
        // Do any additional setup after loading the view.
        let image = UIImageView()
        image.kf.setImage(with: URL(string: ""))
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
}
