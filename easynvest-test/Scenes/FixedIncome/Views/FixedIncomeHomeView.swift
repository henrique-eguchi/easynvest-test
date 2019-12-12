//
//  FixedIncomeHomeView.swift
//  easynvest-test
//
//  Created by Henrique Akiyoshi Eguchi on 11/12/19.
//  Copyright © 2019 Henrique Akiyoshi Eguchi. All rights reserved.
//

import UIKit

protocol FixedIncomeHomeDelegate: class {
    func didTapSimulate()
}

class FixedIncomeHomeView: UIView {
    
    weak var delegate: FixedIncomeHomeDelegate?
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        
        setupView()
    }
    
    lazy var welcomeLabel: UILabel = {
        var lbl = UILabel()
        lbl.text = "Easynvest"
        lbl.textAlignment = .center
        
        return lbl
    }()
    
    private func setupView() {
        self.backgroundColor = .white
        self.addSubview(welcomeLabel)
        
        welcomeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let horizontalConstraint = NSLayoutConstraint(item: welcomeLabel, attribute: NSLayoutConstraint.Attribute.centerX, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.centerX, multiplier: 1, constant: 0)
        let verticalConstraint = NSLayoutConstraint(item: welcomeLabel, attribute: NSLayoutConstraint.Attribute.centerY, relatedBy: NSLayoutConstraint.Relation.equal, toItem: self, attribute: NSLayoutConstraint.Attribute.centerY, multiplier: 1, constant: 0)
        let widthConstraint = NSLayoutConstraint(item: welcomeLabel, attribute: NSLayoutConstraint.Attribute.width, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        let heightConstraint = NSLayoutConstraint(item: welcomeLabel, attribute: NSLayoutConstraint.Attribute.height, relatedBy: NSLayoutConstraint.Relation.equal, toItem: nil, attribute: NSLayoutConstraint.Attribute.notAnAttribute, multiplier: 1, constant: 100)
        
        self.addConstraints([horizontalConstraint, verticalConstraint, widthConstraint, heightConstraint])
    }
}

