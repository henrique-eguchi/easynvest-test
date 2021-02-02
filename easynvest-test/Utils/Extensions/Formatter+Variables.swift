//
//  Formatter+Extensions.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/01/21.
//  Copyright © 2021 Henrique Akiyoshi Eguchi. All rights reserved.
//

import Foundation

extension Formatter {
    static var percentWithoutFractionDigits: NumberFormatter {
        let numberFormatter = NumberFormatter()
        numberFormatter.maximumFractionDigits = 0
        numberFormatter.numberStyle = .percent
        return numberFormatter
    }
}
