//
//  UIColor+Conversions.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 14/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

extension UIColor {

    class func rgb(fromHex: Int) -> UIColor {
        
        let red = CGFloat((fromHex & 0xFF0000) >> 16) / 255.0
        let green = CGFloat((fromHex & 0x00FF00) >> 8) / 255.0
        let blue = CGFloat((fromHex & 0x0000FF)) / 255.0
        let alpha = CGFloat(1.0)
        
        return UIColor(red: red, green: green, blue: blue, alpha: alpha)
    }
}
