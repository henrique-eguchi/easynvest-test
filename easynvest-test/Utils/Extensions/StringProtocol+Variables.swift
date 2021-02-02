//
//  StringProtocol+Variables.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/01/21.
//  Copyright © 2021 Henrique Akiyoshi Eguchi. All rights reserved.
//

import Foundation

extension StringProtocol where Self: RangeReplaceableCollection {
    var digits: Self { filter { $0.isWholeNumber } }
}
