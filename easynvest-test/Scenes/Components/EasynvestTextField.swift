//
//  EasynvestTextField.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 23/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class EasynvestTextField: UITextField {

    // Programmatic Initialization
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        setupTextField()
    }

    // Storyboard Initialization
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupTextField()
    }

    func setupTextField() {
        translatesAutoresizingMaskIntoConstraints = false

        backgroundColor = UIColor.clear
        tintColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        textColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)

        setBottomBorder(withColor: #colorLiteral(red: 0.9352387786, green: 0.9319420457, blue: 0.9283466935, alpha: 1))
        attributedPlaceholder = NSAttributedString(string: attributedPlaceholder?.string ?? "",
                                                   attributes: [NSAttributedString.Key.foregroundColor: #colorLiteral(red: 0.5988404155, green: 0.5989291668, blue: 0.598821044, alpha: 1)])

        contentVerticalAlignment = .center
        contentHorizontalAlignment = .center

        font = UIFont(name: "RationalDisplay-Light", size: 36)
        
        textAlignment = .center
    }
}
