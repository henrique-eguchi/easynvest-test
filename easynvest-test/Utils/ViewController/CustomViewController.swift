//
//  CustomViewController.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2020 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

class CustomViewController<CustomView: UIView>: UIViewController {
    var customView: CustomView {
        return view as! CustomView // swiftlint:disable:this force_cast
    }

    override func loadView() {
        view = CustomView()
    }
}
