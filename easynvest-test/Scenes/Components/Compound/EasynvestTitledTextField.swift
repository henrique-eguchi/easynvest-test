//
//  EasynvestTitledTextField.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 23/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class EasynvestTitledTextField: UIView {
    override init(frame: CGRect = .zero) {
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
    lazy var textField = EasynvestTextField(frame: CGRect.zero)
}

extension EasynvestTitledTextField: ViewCodeTemplate {
    func buildViewHierarchy() {
        addSubview(titleLabel)
        addSubview(textField)
    }

    func setupConstraints() {
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        titleLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        titleLabel.bottomAnchor.constraint(equalTo: textField.topAnchor, constant: -15).isActive = true
        textField.leadingAnchor.constraint(equalTo: self.leadingAnchor).isActive = true
        textField.trailingAnchor.constraint(equalTo: self.trailingAnchor).isActive = true
        textField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        textField.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
    }

    func setupAdditionalConfiguration() {
        textField.textAlignment = .center
    }
}
