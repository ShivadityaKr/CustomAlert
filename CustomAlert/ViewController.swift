//
//  ViewController.swift
//  CustomAlert
//
//  Created by Shivaditya Kumar on 2022-11-28.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tapButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.tapButton.addTarget(self, action: #selector(didTapOnButton), for: .touchUpInside)
        
    }
    @objc private func didTapOnButton() {
        let vc = CustomAlert.instantiate()
        self.present(vc, animated: true)
    }
}

