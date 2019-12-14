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
    
    //lazy - Permite chamar método dentro da closure de criação
    lazy var simulateButton = EasynvestButton(frame: CGRect.zero)
}

extension FixedIncomeHomeView: ViewCodeTemplate {
    func buildViewHierarchy() {
        addSubview(simulateButton)
        
    }
    
    func setupConstraints() {
        simulateButton.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15).isActive = true
        simulateButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        simulateButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        simulateButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -15).isActive = true
    }
    
    func setupAdditionalConfiguration() {
        simulateButton.setTitle("Simular", for: .normal)
    }

}
