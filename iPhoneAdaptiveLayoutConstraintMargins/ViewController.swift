//
//  ViewController.swift
//  iPhoneAdaptiveLayoutConstraintMargins
//
//  Created by Andrey Gordeev on 11/24/16.
//  Copyright © 2016 Andrey Gordeev (andrew8712@gmail.com). All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var rootView: UIView!
    @IBOutlet weak var containerView: UIView!

    // MARK: - Life cycle

    override func viewDidLoad() {
        super.viewDidLoad()

        configureAppearance()
    }

    // MARK: - Controls & appearence

    private func configureAppearance() {
        addBorder()
        setMargins()
    }

    private func addBorder() {
        containerView.layer.borderColor = UIColor.gray.cgColor
        containerView.layer.borderWidth = 1 / UIScreen.main.scale
    }

    private func setMargins() {
        // Default value
        var margin: CGFloat = 8.0
        if UIScreen.main.bounds.width >= 414.0 {
            // 5.5 inch screen.
            margin = 24.0
        } else if UIScreen.main.bounds.width >= 375.0 {
            // 4.7 inch screen.
            margin = 16.0
        }
        rootView.layoutMargins = UIEdgeInsets(top: margin, left: margin, bottom: margin, right: margin)
    }

}

