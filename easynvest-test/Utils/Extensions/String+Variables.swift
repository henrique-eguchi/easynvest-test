//
//  String+Variables.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/01/21.
//  Copyright © 2021 Henrique Akiyoshi Eguchi. All rights reserved.
//

import Foundation

extension String {
    static var empty: String { String() }
    var decimal: Decimal { Decimal(string: digits) ?? 0 }
}
