//
//  NumberFormatter+Extensions.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/01/21.
//  Copyright © 2021 Henrique Akiyoshi Eguchi. All rights reserved.
//

import Foundation

extension NumberFormatter {
    convenience init(numberStyle: Style) {
        self.init()
        self.numberStyle = numberStyle
    }
}
