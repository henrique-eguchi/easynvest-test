//
//  EasynvestCurrencyTextField.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 29/12/20.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

protocol NotifyChangedDelegate: AnyObject {
    func notifyTextFieldChange()
}

//class EasynvestCurrencyTextField: EasynvestTextField {
//    var string: String { return text ?? String.empty }
//    var decimal: Decimal {
//        return string.flatDigits.decimal /
//            Decimal(pow(10, Double(Formatter.currencyFormatter.maximumFractionDigits)))
//    }
//
//    weak var notifyChangedDelegate: NotifyChangedDelegate?
//    let maximum: Decimal = 999_999_999_999
//    var lastValue = String.empty
//
//    override func willMove(toSuperview newSuperview: UIView?) {
//        addTarget(self, action: #selector(editingChanged), for: .editingChanged)
//        keyboardType = .numberPad
//        editingChanged()
//    }
//
//    override func deleteBackward() {
//        text = string.flatDigits.dropLast().string.replacingOccurrences(of: "R$", with: String.empty)
//        editingChanged()
//    }
//
//    @objc
//    func editingChanged() {
//        guard decimal <= maximum else {
//            text = lastValue.toDecimalValue()
//            return
//        }
//        lastValue = Formatter.currencyFormatter.string(for: decimal) ?? String.empty
//        text = lastValue.toDecimalValue()
//
//        if let delegate = notifyChangedDelegate {
//            delegate.notifyTextFieldChange()
//        }
//    }
//}
