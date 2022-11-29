//
//  CustomAlert.swift
//  CustomAlert
//
//  Created by Shivaditya Kumar on 2022-11-28.
//

import UIKit

class CustomAlert: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rightButton: UIButton!
    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var actionButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setupUI()
    }
    var shared: CustomAlert!
    private func setupUI() {
        // ContentView
        self.contentView.layer.cornerRadius = 15
        // Buttons
        self.rightButton.addTarget(self, action: #selector(didTapRightButton), for: .touchUpInside)
        self.actionButton.addTarget(self, action: #selector(didTapActionButton), for: .touchUpInside)
        self.cancelButton.addTarget(self, action: #selector(didTapCancelButton), for: .touchUpInside)
    }
    @objc private func didTapRightButton() {
        closeAlert()
    }
    @objc private func didTapActionButton() {
       closeAlert()
    }
    @objc private func didTapCancelButton() {
        closeAlert()
    }
    func closeAlert() {
        self.dismiss(animated: true)
    }
    func didTapOnAction(action: ()-> Void) {
    }
    class func instantiate() -> CustomAlert {
        let vc = UIStoryboard.main.instanceOf(viewController: CustomAlert.self)!
        vc.shared = vc
        vc.modalTransitionStyle = .crossDissolve
        vc.modalPresentationStyle = .overFullScreen
        return vc
    }
}

