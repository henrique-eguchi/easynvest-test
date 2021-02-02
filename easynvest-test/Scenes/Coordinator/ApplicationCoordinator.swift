//
//  ApplicationCoordinator.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

protocol Coordinator: class {
    func start()
}

class ApplicationCoordinator: Coordinator {
    let window: UIWindow
    let rootViewController: UINavigationController
    let fixedIncomeHomeCoordinator: FixedIncomeHomeCoordinator

    init(window: UIWindow) {
        self.window = window
        rootViewController = UINavigationController()

        fixedIncomeHomeCoordinator = FixedIncomeHomeCoordinator(presenter: rootViewController)
    }

    func start() {
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        fixedIncomeHomeCoordinator.start()
    }
}
