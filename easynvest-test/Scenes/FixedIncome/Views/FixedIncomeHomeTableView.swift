//
//  FixedIncomeHomeTableView.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 27/12/20.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

final class FixedIncomeHomeTableView: UITableView {

    // MARK: - Constants

    private let sections = 1
    private let rows = 3

    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        setupView()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
}

extension FixedIncomeHomeTableView: ViewCodeTemplate {
    func buildViewHierarchy() {
        self.delegate = self
        self.dataSource = self
        self.register(InvestedAmountTableViewCell.self,
                      forCellReuseIdentifier: InvestedAmountTableViewCell.identifier)
        self.register(MaturityDateTableViewCell.self,
                      forCellReuseIdentifier: MaturityDateTableViewCell.identifier)
        self.register(RateTableViewCell.self,
                      forCellReuseIdentifier: RateTableViewCell.identifier)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            self.topAnchor.constraint(equalTo: self.topAnchor),
            self.leadingAnchor.constraint(equalTo: self.leadingAnchor),
            self.trailingAnchor.constraint(equalTo: self.trailingAnchor),
            self.bottomAnchor.constraint(equalTo: self.bottomAnchor)
        ])
    }

    func setupAdditionalConfiguration() {
        allowsSelection = false
        separatorStyle = .none
        showsVerticalScrollIndicator = false
        translatesAutoresizingMaskIntoConstraints = false
    }
}

extension FixedIncomeHomeTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        rows
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: InvestedAmountTableViewCell.identifier,
                                                           for: indexPath) as? InvestedAmountTableViewCell else { return UITableViewCell() }
            return cell
        } else if indexPath.row == 1 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: MaturityDateTableViewCell.identifier,
                                                           for: indexPath) as? MaturityDateTableViewCell else { return UITableViewCell() }
            return cell
        } else if indexPath.row == 2 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: RateTableViewCell.identifier,
                                                           for: indexPath) as? RateTableViewCell else { return UITableViewCell() }
            return cell
        }

        return UITableViewCell()
    }
}

extension FixedIncomeHomeTableView: UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        sections
    }
}
