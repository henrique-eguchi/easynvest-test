//
//  EasynvestTextField.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 23/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

class EasynvestTextField: UITextField {

    // MARK: - Initializer

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        setupTextField()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupTextField()
    }

    func setupTextField() {
        translatesAutoresizingMaskIntoConstraints = false

        backgroundColor = UIColor.clear
        tintColor = UIColor.easynvestDarkGrey
        textColor = UIColor.easynvestDarkGrey

        setBottomBorder(withColor: UIColor.easynvestLightWhite)
        attributedPlaceholder = NSAttributedString(string: attributedPlaceholder?.string ?? String.empty,
                                                   attributes: [
                                                    NSAttributedString.Key.foregroundColor: UIColor.easynvestSoftGray
                                                   ])

        contentVerticalAlignment = .center
        contentHorizontalAlignment = .center

        font = UIFont(name: "RationalDisplay-Light", size: 36)

        textAlignment = .center

        addDoneCancelToolbar()
    }

    func addDoneCancelToolbar(onDone: (target: Any, action: Selector)? = nil,
                              onCancel: (target: Any, action: Selector)? = nil) {
        let onDone = onDone ?? (target: self, action: #selector(doneButtonTapped))

        let toolbar = UIToolbar()
        toolbar.barStyle = .default
        let bar = UIBarButtonItem(title: "Done", style: .done, target: onDone.target, action: onDone.action)
        bar.tintColor = UIColor.easynvestGreen
        toolbar.items = [
            UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil),
            bar
        ]
        toolbar.sizeToFit()

        self.inputAccessoryView = toolbar
    }

    @objc
    func doneButtonTapped() {
        self.resignFirstResponder()
    }
}
