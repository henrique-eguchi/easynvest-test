//
//  UIColor+Conversions.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

extension UIColor {
    convenience init(rgb: UInt) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat((rgb & 0x0000FF)) / 255.0,
            alpha: CGFloat(1.0))
    }
    
    class func rgb(fromHex: UInt) -> UIColor {
        return UIColor(rgb: fromHex)
    }
}
