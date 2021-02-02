//
//  UIControl.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 22/12/20.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

@objc
class ClosureSleeve: NSObject {
    let closure: () -> Void

    init(_ closure: @escaping () -> Void) {
        self.closure = closure
    }

    @objc
    func invoke() {
        closure()
    }
}

extension UIControl {
    func addAction(for controlEvents: UIControl.Event = .touchUpInside, _ closure: @escaping () -> Void) {
        let sleeve = ClosureSleeve(closure)
        addTarget(sleeve, action: #selector(ClosureSleeve.invoke), for: controlEvents)
        objc_setAssociatedObject(self, "[\(arc4random())]", sleeve, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
    }
}
