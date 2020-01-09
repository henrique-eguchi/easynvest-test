//
//  FixedIncomeHomeView.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

protocol FixedIncomeHomeDelegate: class {
    func didTapSimulate()
}

final class FixedIncomeHomeView: UIView {
    weak var delegate: FixedIncomeHomeDelegate?

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        setupView()
    }

    /// Interface builder
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupView()
    }

    lazy var investedAmountView = EasynvestTitledTextField(frame: CGRect.zero)
    lazy var maturityDateView = EasynvestTitledTextField(frame: CGRect.zero)
    lazy var rateView = EasynvestTitledTextField(frame: CGRect.zero)

    //lazy - Permite chamar método dentro da closure de criação
    lazy var fixedIncomeFormStackView: UIStackView = {
        let view = UIStackView()
        view.spacing = 25.0
        view.distribution = .fillProportionally
        view.alignment = .center
        view.axis = .vertical

        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var simulateButton = EasynvestButton(frame: CGRect.zero)
}

extension FixedIncomeHomeView: ViewCodeTemplate {
    func buildViewHierarchy() {
        fixedIncomeFormStackView.addArrangedSubview(investedAmountView)
        fixedIncomeFormStackView.addArrangedSubview(maturityDateView)
        fixedIncomeFormStackView.addArrangedSubview(rateView)

        addSubview(fixedIncomeFormStackView)
        addSubview(simulateButton)
    }

    func setupConstraints() {
        fixedIncomeFormStackView.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor,
                                                      constant: 15).isActive = true
        fixedIncomeFormStackView.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,
                                                          constant: 15).isActive = true
        fixedIncomeFormStackView.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,
                                                           constant: -15).isActive = true

        investedAmountView.leadingAnchor.constraint(equalTo: fixedIncomeFormStackView.leadingAnchor).isActive = true
        investedAmountView.trailingAnchor.constraint(equalTo: fixedIncomeFormStackView.trailingAnchor).isActive = true

        maturityDateView.leadingAnchor.constraint(equalTo: fixedIncomeFormStackView.leadingAnchor).isActive = true
        maturityDateView.trailingAnchor.constraint(equalTo: fixedIncomeFormStackView.trailingAnchor).isActive = true

        rateView.leadingAnchor.constraint(equalTo: fixedIncomeFormStackView.leadingAnchor).isActive = true
        rateView.trailingAnchor.constraint(equalTo: fixedIncomeFormStackView.trailingAnchor).isActive = true

        simulateButton.topAnchor.constraint(greaterThanOrEqualTo: fixedIncomeFormStackView.bottomAnchor,
                                            constant: -15).isActive = true
        simulateButton.leadingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.leadingAnchor,
                                                constant: 15).isActive = true
        simulateButton.trailingAnchor.constraint(equalTo: self.safeAreaLayoutGuide.trailingAnchor,
                                                 constant: -15).isActive = true
        simulateButton.bottomAnchor.constraint(equalTo: self.safeAreaLayoutGuide.bottomAnchor,
                                               constant: -15).isActive = true
        simulateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }

    func setupAdditionalConfiguration() {
        investedAmountView.titleLabel.text = "Quanto você gostaria de aplicar? *"
        investedAmountView.textField.placeholder = "R$"

        maturityDateView.titleLabel.text = "Qual a data de vencimento do investimento? *"
        maturityDateView.textField.placeholder = "dia/mês/ano"

        rateView.titleLabel.text = "Qual o percentual do CDI do investimento? *"
        rateView.textField.placeholder = "100%"

        simulateButton.setTitle("Simular", for: .normal)

        backgroundColor = .white
    }
}
