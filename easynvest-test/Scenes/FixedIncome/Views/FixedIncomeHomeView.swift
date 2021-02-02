//
//  FixedIncomeHomeView.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

protocol FixedIncomeHomeDelegate: class {
    func didTapSimulate(_ sender: UIButton)
}

final class FixedIncomeHomeView: UIView {
    weak var delegate: FixedIncomeHomeDelegate?

    private let padding: CGFloat = 8

    override init(frame: CGRect = .zero) {
        super.init(frame: frame)

        setupView()
    }

    /// Interface builder
    required init?(coder: NSCoder) {
        super.init(coder: coder)

        setupView()
    }

    //lazy - Permite chamar método dentro da closure de criação
    private lazy var containerView: UIView = {
       let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    lazy var fixedIncomeTableView = FixedIncomeHomeTableView()
    lazy var simulateButton: EasynvestButton = {
        let button = EasynvestButton(frame: CGRect.zero)
        button.addAction(for: .touchUpInside) { [weak self] in
            guard let self = self else { return }
            self.delegate?.didTapSimulate(button)
        }
        return button
    }()

    private var containerViewBottomConstraint: NSLayoutConstraint?
}

extension FixedIncomeHomeView: ViewCodeTemplate {
    func buildViewHierarchy() {
        containerView.addSubviews(fixedIncomeTableView, simulateButton)
        addSubview(containerView)
    }

    func setupConstraints() {
        let safeArea = safeAreaLayoutGuide
        NSLayoutConstraint.activate([
            containerView.topAnchor.constraint(equalTo: safeArea.topAnchor, constant: padding),
            containerView.leadingAnchor.constraint(equalTo: safeArea.leadingAnchor, constant: padding),
            containerView.trailingAnchor.constraint(equalTo: safeArea.trailingAnchor, constant: -padding),
            fixedIncomeTableView.topAnchor.constraint(equalTo: containerView.topAnchor),
            fixedIncomeTableView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            fixedIncomeTableView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            fixedIncomeTableView.bottomAnchor.constraint(equalTo: simulateButton.topAnchor, constant: -padding),
            simulateButton.leadingAnchor.constraint(equalTo: containerView.leadingAnchor),
            simulateButton.trailingAnchor.constraint(equalTo: containerView.trailingAnchor),
            simulateButton.bottomAnchor.constraint(equalTo: containerView.bottomAnchor),
            simulateButton.heightAnchor.constraint(equalToConstant: 50)
        ])

        containerViewBottomConstraint = containerView.bottomAnchor.constraint(equalTo: safeArea.bottomAnchor, constant: -padding)
        containerViewBottomConstraint?.isActive = true
    }

    func setupAdditionalConfiguration() {
        backgroundColor = UIColor.white
        simulateButton.setTitle("Simular", for: .normal)
    }
}

extension FixedIncomeHomeView {
    func moveSimulateButtonAboveKeyboard(isKeyboardVisible: Bool, keyboardHeight: CGFloat) {
        containerViewBottomConstraint?.constant = isKeyboardVisible ? -padding - keyboardHeight : -padding
    }
}
