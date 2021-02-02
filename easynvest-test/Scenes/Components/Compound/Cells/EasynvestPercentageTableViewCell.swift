//
//  EasynvestTitleTextFieldTableViewCell.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 27/12/20.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

class EasynvestPercentageTableViewCell: UITableViewCell {

    static var identifier: String {
        return String(describing: self)
    }

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)

        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }

    lazy var titledTextField = EasynvestTitledTextField(frame: CGRect.zero, textField: EasynvestPercentageTextField())
}

extension EasynvestPercentageTableViewCell: ViewCodeTemplate {
    func buildViewHierarchy() {
        contentView.addSubview(titledTextField)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titledTextField.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16),
            titledTextField.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            titledTextField.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            titledTextField.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
    }

    @objc func setupAdditionalConfiguration() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}
