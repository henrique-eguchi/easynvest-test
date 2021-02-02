//
//  EasynvestTitledTextField.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 23/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class EasynvestTitledTextField: UIView {
    init(frame: CGRect = .zero, textField: EasynvestTextField) {
        self.textField = textField
        super.init(frame: frame)
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    lazy var titleLabel: UILabel = {
        let label = UILabel(frame: CGRect.zero)
        label.font = UIFont(name: "RationalDisplay-Light", size: 14)
        label.textColor = #colorLiteral(red: 0.5988404155, green: 0.5989291668, blue: 0.598821044, alpha: 1)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    var textField: EasynvestTextField
}

extension EasynvestTitledTextField: ViewCodeTemplate {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(textField)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: self.topAnchor),
            titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            textField.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 15),
            textField.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            textField.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            textField.heightAnchor.constraint(equalToConstant: 50),
            textField.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    func setupAdditionalConfiguration() {
        translatesAutoresizingMaskIntoConstraints = false
        textField.textAlignment = .center
    }
}
