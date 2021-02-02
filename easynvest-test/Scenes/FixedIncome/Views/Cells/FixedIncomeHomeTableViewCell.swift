//
//  FixedIncomeHomeTableViewCell.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 27/12/20.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

class InvestedAmountTableViewCell: EasynvestCurrencyTableViewCell {
    override func setupAdditionalConfiguration() {
        titledTextField.titleLabel.text = "Quanto você gostaria de aplicar? *"
        titledTextField.textField.placeholder = "R$"
        titledTextField.textField.keyboardType = .numberPad
    }
}

class MaturityDateTableViewCell: EasynvestDateTableViewCell {
    override func setupAdditionalConfiguration() {
        titledTextField.titleLabel.text = "Qual a data de vencimento do investimento? *"
        titledTextField.textField.placeholder = "dia/mês/ano"
        titledTextField.textField.keyboardType = .numberPad
    }
}

class RateTableViewCell: EasynvestPercentageTableViewCell {
    override func setupAdditionalConfiguration() {
        titledTextField.titleLabel.text = "Qual o percentual do CDI do investimento? *"
        titledTextField.textField.placeholder = "100%"
        titledTextField.textField.keyboardType = .numberPad
    }
}
