//
//  UITextField+Border.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 23/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

extension UITextField {
    func setBottomBorder(withColor color: UIColor) {
        self.borderStyle = UITextField.BorderStyle.none
        let borderWidth: CGFloat = 1.0

        let bottomBorder = UIView.init(frame: CGRect())
        bottomBorder.backgroundColor = color
        bottomBorder.translatesAutoresizingMaskIntoConstraints = false

        self.addSubview(bottomBorder)

        bottomBorder.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        bottomBorder.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        bottomBorder.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        bottomBorder.heightAnchor.constraint(equalToConstant: borderWidth).isActive = true
    }
}
