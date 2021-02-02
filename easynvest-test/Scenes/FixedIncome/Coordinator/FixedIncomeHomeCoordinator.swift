//
//  FixedIncomeHomeCoordinator.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

class FixedIncomeHomeCoordinator: Coordinator {

    private let presenter: UINavigationController
    private var fixedIncomeHomeViewController: FixedIncomeHomeViewController?
//    private var fixedIncomeSimulationResultCoordinator: FixedIncomeSimulationResultCoordinator?

    init(presenter: UINavigationController) {
        self.presenter = presenter
    }

    func start() {
        let fixedIncomeHomeViewController = FixedIncomeHomeViewController()
        fixedIncomeHomeViewController.title = "Fixed Income Simulator"
//
////        let fixedIncomeViewModel = FixedIncomeViewModel()
////        fixedIncomeHomeViewController.viewModel = fixedIncomeViewModel
//
//        fixedIncomeViewModel.navigationDelegate = self
//        fixedIncomeViewModel.delegate = fixedIncomeHomeViewController
//
        presenter.pushViewController(fixedIncomeHomeViewController, animated: true)
//
        self.fixedIncomeHomeViewController = fixedIncomeHomeViewController
    }
}

//extension FixedIncomeHomeCoordinator: FixedIncomeHomeNavigationDelegate {
//    func didTapSimulate(_ fixedIncomeSimulationData: FixedIncomeSimulationData) {
//        let fixedIncomeSimulationResultCoordinator = FixedIncomeSimulationResultCoordinator(presenter: presenter, fixedIncomeSimulationData: fixedIncomeSimulationData)
//        FixedIncomeSimulationResultCoordinator.start()
//
//        self.fixedIncomeSimulationResultCoordinator = fixedIncomeSimulationResultCoordinator
//    }
//}
