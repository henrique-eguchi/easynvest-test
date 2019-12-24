//
//  FixedIncomeHomeViewController.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class FixedIncomeHomeViewController: CustomViewController<FixedIncomeHomeView> {
    // MARK: View Lifecycle
    override func loadView() {
        super.loadView()
        customView.delegate = self
    }
}

extension FixedIncomeHomeViewController: FixedIncomeHomeDelegate {
    func didTapSimulate() {
        fatalError("NOT IMPLEMENTED")
    }
}
