//
//  BaseView.swift
//  CalculatorApps
//
//  Created by Nabilla on 17/02/20.
//  Copyright © 2020 PT Intersolusi Teknologi Asia. All rights reserved.
//

import UIKit

class BaseView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupViewLayout()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupViewLayout()
    }
    
    func setupViewLayout() {
        self.clipsToBounds = true
        self.layer.cornerRadius = 10
        self.backgroundColor = UIColor.plainViewColor
    }
    
}

class BorderView: BaseView {
    
    override func setupViewLayout() {
        super.setupViewLayout()
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.borderColor.cgColor
        self.backgroundColor = UIColor.borderViewColor
    }
    
}

class PlainView: BaseView {
    
    override func setupViewLayout() {
        super.setupViewLayout()
        self.layer.cornerRadius = 0
        self.backgroundColor = UIColor.borderViewColor
    }
}
