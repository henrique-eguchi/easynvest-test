//
//  EasynvestButton.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class EasynvestButton: UIButton {
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        setupButton()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupButton()
    }

    func setupButton() {
        translatesAutoresizingMaskIntoConstraints = false

        backgroundColor = UIColor.easynvestGreen
        tintColor = UIColor.white
        layer.borderWidth = 0
        layer.cornerRadius = 25.0
        frame.size.height = 100
        contentVerticalAlignment = .center
        contentHorizontalAlignment = .center

        titleLabel?.font = UIFont(name: "RationalDisplay-Medium", size: 16)
    }
}
