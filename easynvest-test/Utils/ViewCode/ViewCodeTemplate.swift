//
//  ViewCodeTemplate.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 13/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import Foundation

protocol ViewCodeTemplate {
    func buildViewHierarchy()
    func setupConstraints()
    func setupAdditionalConfiguration()
    func setupView()
}

extension ViewCodeTemplate {
    func setupView() {
        buildViewHierarchy()
        setupConstraints()
        setupAdditionalConfiguration()
    }
}
