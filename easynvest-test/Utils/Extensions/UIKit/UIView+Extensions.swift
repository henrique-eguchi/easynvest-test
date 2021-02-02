//
//  UIView+Extensions.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 29/12/20.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        for view in views {
            addSubview(view)
        }
    }
}
