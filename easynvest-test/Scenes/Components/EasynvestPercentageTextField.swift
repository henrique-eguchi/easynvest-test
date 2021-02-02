//
//  EasynvestPercentageTextField.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/01/21.
//  Copyright © 2021 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

class EasynvestPercentageTextField: EasynvestTextField {

    // MARK: - Variables

    var decimal: Decimal { string.decimal / 100 }
    private let maximum: Decimal = 9.99
    private var lastValue: String?

    var locale: Locale = .current {
        didSet {
            Formatter.percentWithoutFractionDigits.locale = locale
            sendActions(for: .editingChanged)
        }
    }

    // MARK: - Overrides

    override func willMove(toSuperview newSuperview: UIView?) {
        print(#function)
        Formatter.percentWithoutFractionDigits.locale = locale
        addTarget(self, action: #selector(editingChanged), for: .editingChanged)
        keyboardType = .numberPad
        textAlignment = .right
        sendActions(for: .editingChanged)
    }

    override func deleteBackward() {
        text = string.digits.dropLast().string
        sendActions(for: .editingChanged)
    }

    // MARK: - Actions

    @objc func editingChanged() {
        guard decimal <= maximum else {
            text = lastValue
            return
        }

        text = decimal.percent
        lastValue = text
    }
}
